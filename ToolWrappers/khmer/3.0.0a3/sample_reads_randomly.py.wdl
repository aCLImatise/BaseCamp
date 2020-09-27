version 1.0

task Samplereadsrandomlypy {
  input {
    Int? n
    Boolean? info
  }
  command <<<
    sample_reads_randomly_py \
      ~{if defined(n) then ("-N " +  '"' + n + '"') else ""} \
      ~{if (info) then "--info" else ""}
  >>>
  parameter_meta {
    n: ""
    info: ""
  }
  output {
    File out_stdout = stdout()
  }
}