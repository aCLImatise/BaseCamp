version 1.0

task Fastaindex {
  input {
    Boolean? help
    File? fast_a
    File? index
  }
  command <<<
    fastaindex \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    index: ""
  }
  output {
    File out_stdout = stdout()
  }
}