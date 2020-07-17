version 1.0

task PrinseqLite.pl {
  input {
    Boolean? help
    Boolean? version
    Boolean? man
    Boolean? verbose
    Boolean? fast_q
    String? fast_a
    String? fast_q_two
    String? input_fast_q_file
  }
  command <<<
    prinseq-lite.pl \
      ~{input_fast_q_file} \
      ~{true="-help" false="" help} \
      ~{true="-version" false="" version} \
      ~{true="-man" false="" man} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-fastq" false="" fast_q} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(fast_q_two) then ("-fastq2 " +  '"' + fast_q_two + '"') else ""}
  >>>
  parameter_meta {
    help: ""
    version: ""
    man: ""
    verbose: ""
    fast_q: ""
    fast_a: ""
    fast_q_two: ""
    input_fast_q_file: ""
  }
}