version 1.0

task WidenOverlaps {
  input {
    Boolean? depot
  }
  command <<<
    widen_overlaps \
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