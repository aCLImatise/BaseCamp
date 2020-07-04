version 1.0

task MbGenerateNegativeSetGenome {
  input {
    String? number
    String? width
    Boolean? v
    String mb_generate_negative_set
  }
  command <<<
    mb-generate-negative-set genome \
      ~{mb_generate_negative_set} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    number: ""
    width: ""
    v: ""
    mb_generate_negative_set: ""
  }
}