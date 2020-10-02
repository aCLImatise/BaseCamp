version 1.0

task SamToBamsh {
  input {
    Int? output_directory_optional
  }
  command <<<
    sam_to_bam_sh \
      ~{if defined(output_directory_optional) then ("-i " +  '"' + output_directory_optional + '"') else ""}
  >>>
  parameter_meta {
    output_directory_optional: "file\\n-o output directory (optional). By default the BAM file will replace SAM in the same location\\n-s sample name\\n-g group name (optional). If unset, samples will be gathered in NO_GROUP group\\n-T number of threads\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}