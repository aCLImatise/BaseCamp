version 1.0

task ExtractFastaSeq {
  input {
    String? query_list_effect
    Boolean? s
    Int? s_one
    Int? s_two
    Boolean? done
    Boolean? d_two
    Boolean? o
    Boolean? invert_the_output
    Boolean? verbose_output
    Boolean? lazy
    File? f
    String option_dot
  }
  command <<<
    extract_fasta_seq \
      ~{option_dot} \
      ~{if defined(query_list_effect) then ("-q " +  '"' + query_list_effect + '"') else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if defined(s_one) then ("-s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("-s2 " +  '"' + s_two + '"') else ""} \
      ~{if (done) then "-d1" else ""} \
      ~{if (d_two) then "-d2" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (invert_the_output) then "-v" else ""} \
      ~{if (verbose_output) then "-V" else ""} \
      ~{if (lazy) then "--lazy" else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    query_list_effect: "[<str> ...]  query list. \\\"-s1\\\" and \\\"-d1\\\" have no effect on this"
    s: "[<subject file>]   subject file [stdin]"
    s_one: "query file sep_pattern [\\s+]"
    s_two: "subject file sep_pattern [\\s+]"
    done: "[<int>]           which field in the query_file is to used? [0]"
    d_two: "[<int>]           which field in the subject_file is to used? useful for\\nfinding out all sequences in the subject_file whose\\nseqids equal to the queryids [0]"
    o: "[<outfile>]        outfile [stdout]"
    invert_the_output: "invert the output [False]"
    verbose_output: "verbose output"
    lazy: "Stop searching once each required seqid has at least\\none sequence found, which can be problems if some\\nrequired seqids have more than sequences! Works only\\nfor non-invert mode. [False]"
    f: ""
    option_dot: "-f <query file>       query list file, one line should contain only one"
  }
  output {
    File out_stdout = stdout()
  }
}