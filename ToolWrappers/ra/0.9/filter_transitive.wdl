version 1.0

task FilterTransitive {
  input {
    Boolean? depot
  }
  command <<<
    filter_transitive \
      ~{if (depot) then "--depot" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    depot: "depot path (string)"
  }
  output {
    File out_stdout = stdout()
  }
}