version 1.0

task BuildKaryotypesh {
  input {
    File? output_directory_optional
  }
  command <<<
    build_karyotype_sh \
      ~{if defined(output_directory_optional) then ("-i " +  '"' + output_directory_optional + '"') else ""}
  >>>
  parameter_meta {
    output_directory_optional: "file\\n-o output directory (optional). By default the file is replaced in the same location\\n-f file name for identification\\n-g group name for identification\\n-R Reconstruct\\n-K percentage value to display plasmids covered >= in summary image\\n-k percentage value to display plasmids covered >= in individual image\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_optional = "${in_output_directory_optional}"
  }
}