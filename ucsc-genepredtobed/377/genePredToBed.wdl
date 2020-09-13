version 1.0

task GenePredToBed {
  input {
    String? xxx
  }
  command <<<
    genePredToBed \
      ~{if defined(xxx) then ("-xxx " +  '"' + xxx + '"') else ""}
  >>>
  parameter_meta {
    xxx: ""
  }
  output {
    File out_stdout = stdout()
  }
}