version 1.0

task CnvanatorToBedpespy {
  input {
    File? cnv_calls
    Boolean? cnv_kit
    File? del_o
    File? dup_o
    Int? breakpoint_size
  }
  command <<<
    cnvanator_to_bedpes_py \
      ~{if defined(cnv_calls) then ("--cnv_calls " +  '"' + cnv_calls + '"') else ""} \
      ~{if (cnv_kit) then "--cnvkit" else ""} \
      ~{if defined(del_o) then ("--del_o " +  '"' + del_o + '"') else ""} \
      ~{if defined(dup_o) then ("--dup_o " +  '"' + dup_o + '"') else ""} \
      ~{if defined(breakpoint_size) then ("--breakpoint_size " +  '"' + breakpoint_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cnv_calls: "Output file from CNVanator"
    cnv_kit: "input is .cns file from cnvkit"
    del_o: "Deletion output bedpe file name"
    dup_o: "Duplication output bedpe file name"
    breakpoint_size: "The total size of the resulting breakpoint, centered\\non the call edge\\n"
  }
  output {
    File out_stdout = stdout()
    File out_cnv_calls = "${in_cnv_calls}"
    File out_del_o = "${in_del_o}"
    File out_dup_o = "${in_dup_o}"
  }
}