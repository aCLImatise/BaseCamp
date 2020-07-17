version 1.0

task Parsecasm {
  input {
    Boolean? no_fast_a
    Boolean? just_fast_a
    String? output_prefix
    Boolean? no_names
  }
  command <<<
    parsecasm \
      ~{true="-nofasta" false="" no_fast_a} \
      ~{true="-justfasta" false="" just_fast_a} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{true="-nonames" false="" no_names}
  >>>
  parameter_meta {
    no_fast_a: "Do not create .fasta output"
    just_fast_a: "Only create .fasta output"
    output_prefix: "Output prefix"
    no_names: "Uses Ids rather than trying to figure out seqnames"
  }
}