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
      ~{true="-l" false="" display_statistics_library} \
      ~{true="-r" false="" display_statistics_read} \
      ~{true="-lr" false="" lr}
  >>>
  parameter_meta {
    display_statistics_library: "Display statistics for each library"
    display_statistics_read: "Display statistics for each read group (by default, displays both)"
    lr: ""
    file: ""
  }
}