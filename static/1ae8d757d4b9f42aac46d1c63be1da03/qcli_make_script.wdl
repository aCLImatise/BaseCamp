version 1.0

task QcliMakeScript {
  input {
    String? output_fp
  }
  command <<<
    qcli_make_script \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    output_fp: "The output filepath. [REQUIRED]"
  }
}