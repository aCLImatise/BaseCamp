version 1.0

task Lefse2circladerpyINPUTFILE {
  input {
    String? l
    Int lefsetwocircladerdotpy
    String? with
    String? label
  }
  command <<<
    lefse2circlader_py INPUT_FILE \
      ~{lefsetwocircladerdotpy} \
      ~{with} \
      ~{label} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    l: ""
    lefsetwocircladerdotpy: ""
    with: ""
    label: ""
  }
  output {
    File out_stdout = stdout()
  }
}