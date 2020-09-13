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
      ~{if (no_fast_a) then "-nofasta" else ""} \
      ~{if (just_fast_a) then "-justfasta" else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{if (no_names) then "-nonames" else ""}
  >>>
  parameter_meta {
    no_fast_a: "Do not create .fasta output"
    just_fast_a: "Only create .fasta output"
    output_prefix: "Output prefix"
    no_names: "Uses Ids rather than trying to figure out seqnames"
  }
  output {
    File out_stdout = stdout()
  }
}