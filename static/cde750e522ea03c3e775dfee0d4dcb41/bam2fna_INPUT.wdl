version 1.0

task Bam2fnaINPUT {
  input {
    String var_output
  }
  command <<<
    bam2fna INPUT \
      ~{var_output}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}