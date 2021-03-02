version 1.0

task SplitBedIntoEqualRegionspy {
  input {
    File? input_file
    File? output_files
  }
  command <<<
    split_Bed_into_equal_regions_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_files) then ("--output-files " +  '"' + output_files + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/somaticseq:3.6.2--py_0"
  }
  parameter_meta {
    input_file: "Input merged BED file (default: None)"
    output_files: "Output BED file (default: <_io.TextIOWrapper\\nname='<stdout>' mode='w' encoding='utf-8'>)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_files = "${in_output_files}"
  }
}