version 1.0

task ToLower {
  input {
    String in_file
    String outfile
  }
  command <<<
    toLower \
      ~{in_file} \
      ~{outfile}
  >>>
  parameter_meta {
    in_file: ""
    outfile: ""
  }
}