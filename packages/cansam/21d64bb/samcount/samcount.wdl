version 1.0

task Samcount {
  input {
    Boolean? display_statistics_library
    Boolean? display_statistics_read
    Boolean? lr
    File? file
  }
  command <<<
    samcount \
      ~{file} \
      ~{if (display_statistics_library) then "-l" else ""} \
      ~{if (display_statistics_read) then "-r" else ""} \
      ~{if (lr) then "-lr" else ""}
  >>>
  parameter_meta {
    display_statistics_library: "Display statistics for each library"
    display_statistics_read: "Display statistics for each read group (by default, displays both)"
    lr: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}