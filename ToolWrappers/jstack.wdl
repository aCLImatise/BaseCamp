version 1.0

task Jstack {
  input {
    Boolean? long_listing_information
    Boolean? extended_listing_information
    String pid
  }
  command <<<
    jstack \
      ~{pid} \
      ~{if (long_listing_information) then "-l" else ""} \
      ~{if (extended_listing_information) then "-e" else ""}
  >>>
  parameter_meta {
    long_listing_information: "long listing. Prints additional information about locks"
    extended_listing_information: "extended listing. Prints additional information about threads"
    pid: ""
  }
  output {
    File out_stdout = stdout()
  }
}