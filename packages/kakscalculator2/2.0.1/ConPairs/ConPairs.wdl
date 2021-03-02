version 1.0

task ConPairs {
  input {
    String? axt
    File? filename
    String? var_output
  }
  command <<<
    ConPairs \
      ~{axt} \
      ~{filename} \
      ~{var_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kakscalculator2:2.0.1--hc9558a2_0"
  }
  parameter_meta {
    axt: ""
    filename: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}