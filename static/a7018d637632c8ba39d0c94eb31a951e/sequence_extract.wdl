version 1.0

task SequenceExtract {
  input {
    Boolean? bases
    String? sequences
    Boolean? reverse
    Boolean? complement
    Boolean? rc
    Boolean? compress
    Int? down_case
    String sequence
    String? mode
    String? sequence_file
  }
  command <<<
    sequence extract \
      ~{sequence} \
      ~{mode} \
      ~{sequence_file} \
      ~{if (bases) then "-bases" else ""} \
      ~{if defined(sequences) then ("-sequences " +  '"' + sequences + '"') else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if (complement) then "-complement" else ""} \
      ~{if (rc) then "-rc" else ""} \
      ~{if (compress) then "-compress" else ""} \
      ~{if defined(down_case) then ("-downcase " +  '"' + down_case + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bases: "baselist extract bases as specified in the 'list' from each sequence"
    sequences: "extract ordinal sequences as specified in the 'list'"
    reverse: "reverse the bases in the sequence"
    complement: "complement the bases in the sequence"
    rc: "alias for -reverse -complement"
    compress: "compress homopolymer runs to one base"
    down_case: "print sequence if it is at least 'min' bases and at most 'max' bases long\\na 'baselist' is a set of integers formed from any combination\\nof the following, seperated by a comma:\\nnum       a single number\\nbgn-end   a range of numbers:  bgn <= end\\nbases are spaced-based; -bases 0-2,4 will print the bases between\\nthe first two spaces (the first two bases) and the base after the\\nfourth space (the fifth base).\\na 'seqlist' is a set of integers formed from any combination\\nof the following, seperated by a comma:\\nnum       a single number\\nbgn-end   a range of numbers:  bgn <= end\\nsequences are 1-based; -sequences 1,3-5 will print the first, third,\\nfourth and fifth sequences."
    sequence: ""
    mode: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}