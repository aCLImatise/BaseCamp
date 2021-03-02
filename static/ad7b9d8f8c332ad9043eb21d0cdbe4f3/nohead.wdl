version 1.0

task Nohead {
  input {
    Int? lines
  }
  command <<<
    nohead \
      ~{if defined(lines) then ("--lines " +  '"' + lines + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    lines: "suppress NUM lines (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}