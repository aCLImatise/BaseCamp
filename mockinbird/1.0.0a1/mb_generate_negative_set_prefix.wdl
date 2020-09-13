version 1.0

task MbgeneratenegativesetPrefix {
  input {
    Boolean? v
    String? width
    Int? number
    String mb_generate_negative_set
  }
  command <<<
    mb_generate_negative_set prefix \
      ~{mb_generate_negative_set} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    width: ""
    number: ""
    mb_generate_negative_set: ""
  }
  output {
    File out_stdout = stdout()
  }
}