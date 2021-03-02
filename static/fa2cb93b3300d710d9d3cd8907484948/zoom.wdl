version 1.0

task Zoom {
  input {
    Boolean? root
    Boolean? depth
    Boolean? depot
  }
  command <<<
    zoom \
      ~{if (root) then "--root" else ""} \
      ~{if (depth) then "--depth" else ""} \
      ~{if (depot) then "--depot" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    root: "root read (int)"
    depth: "neighborhood depth (int)"
    depot: "depot path (string)"
  }
  output {
    File out_stdout = stdout()
  }
}