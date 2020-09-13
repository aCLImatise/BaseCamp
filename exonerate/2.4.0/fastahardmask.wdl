version 1.0

task Fastahardmask {
  input {
    Boolean? help
    File? fast_a
  }
  command <<<
    fastahardmask \
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