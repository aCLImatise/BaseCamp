version 1.0

task MafftDistance {
  input {
    Boolean? pd
    String? i
    String input_file
  }
  command <<<
    mafft-distance \
      ~{input_file} \
      ~{true="-PD" false="" pd} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    pd: ""
    i: ""
    input_file: ""
  }
}