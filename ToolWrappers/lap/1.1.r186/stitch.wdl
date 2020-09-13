version 1.0

task Stitch {
  input {
    File? file_containing_first_read
    File? file_containing_second_read
    Boolean? out_ie
    String second
  }
  command <<<
    stitch \
      ~{second} \
      ~{if defined(file_containing_first_read) then ("-1 " +  '"' + file_containing_first_read + '"') else ""} \
      ~{if defined(file_containing_second_read) then ("-2 " +  '"' + file_containing_second_read + '"') else ""} \
      ~{if (out_ie) then "--outie" else ""}
  >>>
  parameter_meta {
    file_containing_first_read: "The file containing the first read of each pair"
    file_containing_second_read: "The file containing the second read of each pair"
    out_ie: "Reverse complement the first mate, instead of the"
    second: "-?, --help                 Give this help list"
  }
  output {
    File out_stdout = stdout()
  }
}