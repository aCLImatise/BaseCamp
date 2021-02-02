version 1.0

task MspSimulateSampleSize {
  input {
    Int? length
    String msp
    String simulate
  }
  command <<<
    msp simulate sample_size \
      ~{msp} \
      ~{simulate} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  parameter_meta {
    length: ""
    msp: ""
    simulate: ""
  }
  output {
    File out_stdout = stdout()
  }
}