version 1.0

task Canda {
  input {
    File? t
    String c_and_file
    String seq_file
    String out_file
  }
  command <<<
    canda \
      ~{c_and_file} \
      ~{seq_file} \
      ~{out_file} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    c_and_file: ""
    seq_file: ""
    out_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}