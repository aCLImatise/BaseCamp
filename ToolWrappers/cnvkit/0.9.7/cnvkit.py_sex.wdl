version 1.0

task CnvkitpySex {
  input {
    Boolean? haploid_x_reference
    File? output_table_file
    String filenames
  }
  command <<<
    cnvkit_py sex \
      ~{filenames} \
      ~{if (haploid_x_reference) then "--haploid-x-reference" else ""} \
      ~{if defined(output_table_file) then ("--output " +  '"' + output_table_file + '"') else ""}
  >>>
  parameter_meta {
    haploid_x_reference: "Assume inputs were normalized to a male reference\\n(i.e. female samples will have +1 log-coverage of\\nchrX; otherwise male samples would have -1 chrX)."
    output_table_file: "Output table file name.\\n"
    filenames: "Copy number or copy ratio files (*.cnn, *.cnr)."
  }
  output {
    File out_stdout = stdout()
    File out_output_table_file = "${in_output_table_file}"
  }
}