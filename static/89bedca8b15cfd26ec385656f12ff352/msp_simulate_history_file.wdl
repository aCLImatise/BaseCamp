version 1.0

task MspSimulateHistoryFile {
  input {
    Int? length
    String msp
    String simulate
  }
  command <<<
    msp simulate history_file \
      ~{msp} \
      ~{simulate} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    length: ""
    msp: ""
    simulate: ""
  }
  output {
    File out_stdout = stdout()
  }
}