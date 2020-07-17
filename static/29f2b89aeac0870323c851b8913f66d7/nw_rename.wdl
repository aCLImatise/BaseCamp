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
      ~{true="-hl" false="" hl}
  >>>
  parameter_meta {
    hl: ""
    filename_vertical_line: ""
    map_filename: ""
  }
}