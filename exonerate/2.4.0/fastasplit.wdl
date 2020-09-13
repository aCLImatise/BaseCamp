version 1.0

task Fastasplit {
  input {
    Boolean? help
    File? fast_a
    File? var_output
    Boolean? chunk
  }
  command <<<
    fastasplit \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (chunk) then "--chunk" else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    var_output: ""
    chunk: ""
  }
  output {
    File out_stdout = stdout()
  }
}