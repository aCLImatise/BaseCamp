version 1.0

task ChainMergeSort {
  input {
    Boolean? save_id
    String? input_list
    String? tempdir
    File file
  }
  command <<<
    chainMergeSort \
      ~{file} \
      ~{true="-saveId" false="" save_id} \
      ~{if defined(input_list) then ("-inputList " +  '"' + input_list + '"') else ""} \
      ~{if defined(tempdir) then ("-tempDir " +  '"' + tempdir + '"') else ""}
  >>>
  parameter_meta {
    save_id: "- keep the existing chain ids."
    input_list: "- somefile contains list of input chain files."
    tempdir: "- somedir has space for temporary sorting data, default ./"
    file: ""
  }
}