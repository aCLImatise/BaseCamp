version 1.0

task ChromosomePaint {
  input {
    Boolean? string_mizbee_file
  }
  command <<<
    ChromosomePaint \
      ~{if (string_mizbee_file) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_mizbee_file: "<string> : MizBee file"
  }
  output {
    File out_stdout = stdout()
  }
}