version 1.0

task CnvAnnotatepy {
  input {
    File? output_filename
  }
  command <<<
    cnv_annotate_py \
      ~{if defined(output_filename) then ("--output " +  '"' + output_filename + '"') else ""}
  >>>
  parameter_meta {
    output_filename: "Output filename.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}