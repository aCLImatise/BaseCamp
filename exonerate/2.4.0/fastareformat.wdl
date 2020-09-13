version 1.0

task Fastareformat {
  input {
    Boolean? help
    File? fast_a
  }
  command <<<
    fastareformat \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}