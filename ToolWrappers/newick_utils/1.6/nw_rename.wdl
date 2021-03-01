version 1.0

task NwRename {
  input {
    Boolean? hl
    File filename_vertical_line
    String map_filename
  }
  command <<<
    nw_rename \
      ~{filename_vertical_line} \
      ~{map_filename} \
      ~{if (hl) then "-hl" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hl: ""
    filename_vertical_line: ""
    map_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}