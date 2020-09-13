version 1.0

task Csfastq1csfastq {
  input {
    Boolean? cs_fast_q_one
    Boolean? cs_fast_q_two
    Boolean? tags
    Boolean? add_tags
    Boolean? trim_name
    Boolean? tone
    Boolean? t_two
    Boolean? int_minimum_mean
    Boolean? len
    Boolean? double_encoded
    Boolean? fragment
    Boolean? mate_pair
    Boolean? bs
    Boolean? max_reads
    Boolean? log
    Int tag_two
  }
  command <<<
    _csfastq_1csfastq \
      ~{tag_two} \
      ~{if (cs_fast_q_one) then "-csfastq1" else ""} \
      ~{if (cs_fast_q_two) then "-csfastq2" else ""} \
      ~{if (tags) then "-tags" else ""} \
      ~{if (add_tags) then "-add_tags" else ""} \
      ~{if (trim_name) then "-trim_name" else ""} \
      ~{if (tone) then "-t1" else ""} \
      ~{if (t_two) then "-t2" else ""} \
      ~{if (int_minimum_mean) then "-q" else ""} \
      ~{if (len) then "-len" else ""} \
      ~{if (double_encoded) then "-double-encoded" else ""} \
      ~{if (fragment) then "-fragment" else ""} \
      ~{if (mate_pair) then "-mate-pair" else ""} \
      ~{if (bs) then "-bs" else ""} \
      ~{if (max_reads) then "-max_reads" else ""} \
      ~{if (log) then "-log" else ""}
  >>>
  parameter_meta {
    cs_fast_q_one: "(string)        first csfastq file."
    cs_fast_q_two: "(string)        second csfastq file."
    tags: "(string,string)    Pair-end tags ( R3, F3, F5_BC ... )"
    add_tags: "(string,string)    add pair-end tags to not tagged read name"
    trim_name: "By default the program trim the read name at the first space.\\nUsing this parameter the trimming is disabled"
    tone: "(int)          it trims sequences at 3' end of the first read"
    t_two: "(int)          it trims sequences at 3' end of the second read"
    int_minimum_mean: "(int)          minimum mean average quality tolerated for paired_end sequences"
    len: "(int)          minimum reads size after trimming"
    double_encoded: "output double encoded reads [disabled]"
    fragment: "fragment library: use only -csfastq2 to set the input csfastq file"
    mate_pair: "Sequences coming from mate pair library (wiil be considered as\\npaired-end library [disabled]"
    bs: "base space reads as input [disabled]"
    max_reads: "(float)         Max number of reads to be considered before the program exits"
    log: "(string)        log file."
    tag_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}