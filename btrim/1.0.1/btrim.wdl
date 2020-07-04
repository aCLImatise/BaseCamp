version 1.0

task Btrim {
  input {
    Boolean? u
    String? unit_ig
    File? file
  }
  command <<<
    btrim \
      ~{unit_ig} \
      ~{file} \
      ~{true="-u" false="" u}
  >>>
  parameter_meta {
    u: ""
    unit_ig: ""
    file: ""
  }
}