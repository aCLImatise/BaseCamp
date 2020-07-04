version 1.0

task ToUpper {
  input {
    String in_file
    String outfile
  }
  command <<<
    toUpper \
      ~{in_file} \
      ~{outfile}
  >>>
  parameter_meta {
    in_file: ""
    outfile: ""
  }
}