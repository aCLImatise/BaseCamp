version 1.0

task Prophet {
  input {
    Boolean? gap_open
    Boolean? gap_extend
  }
  command <<<
    _prophet \
      ~{if (gap_open) then "-gapopen" else ""} \
      ~{if (gap_extend) then "-gapextend" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gap_open: "float      [1.0] Gap opening coefficient (Number from\\n0.000 to 100.000)"
    gap_extend: "float      [1.0] Gap extension coefficient (Number from\\n0.000 to 100.000)"
  }
  output {
    File out_stdout = stdout()
  }
}