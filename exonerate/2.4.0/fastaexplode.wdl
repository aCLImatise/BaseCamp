version 1.0

task Fastaexplode {
  input {
    Boolean? help
    File? fast_a
    File? directory
  }
  command <<<
    fastaexplode \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}