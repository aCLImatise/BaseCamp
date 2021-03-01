version 1.0

task Pwd {
  input {
    Boolean? logical
    Boolean? physical
  }
  command <<<
    pwd \
      ~{if (logical) then "--logical" else ""} \
      ~{if (physical) then "--physical" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    logical: "use PWD from environment, even if it contains symlinks"
    physical: "avoid all symlinks"
  }
  output {
    File out_stdout = stdout()
  }
}