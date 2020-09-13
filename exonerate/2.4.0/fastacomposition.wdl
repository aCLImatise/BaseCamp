version 1.0

task Fastacomposition {
  input {
    Boolean? help
    File? fast_a
    Boolean? ignorecase
    Boolean? separate
  }
  command <<<
    fastacomposition \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (ignorecase) then "--ignorecase" else ""} \
      ~{if (separate) then "--separate" else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    ignorecase: ""
    separate: ""
  }
  output {
    File out_stdout = stdout()
  }
}