version 1.0

task CnvkitpyExportSeg {
  input {
    Boolean? enumerate_chrom_s
    File? output_file_name
    String filenames
  }
  command <<<
    cnvkit_py export seg \
      ~{filenames} \
      ~{if (enumerate_chrom_s) then "--enumerate-chroms" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    enumerate_chrom_s: "Replace chromosome names with sequential integer IDs."
    output_file_name: "Output file name.\\n"
    filenames: "Segmented copy ratio data file(s) (*.cns), the output\\nof the 'segment' sub-command."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}