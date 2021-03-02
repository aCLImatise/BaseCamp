version 1.0

task RgttoolspyGtfIntergenic {
  input {
    File? input_gtf_file
    File? output_directory_bed
    Boolean? organism
  }
  command <<<
    rgt_tools_py gtf_intergenic \
      ~{if defined(input_gtf_file) then ("-i " +  '"' + input_gtf_file + '"') else ""} \
      ~{if defined(output_directory_bed) then ("-o " +  '"' + output_directory_bed + '"') else ""} \
      ~{if (organism) then "-organism" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_gtf_file: "Input GTF file"
    output_directory_bed: "Output directory for BED file"
    organism: "Define the organism"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_bed = "${in_output_directory_bed}"
  }
}