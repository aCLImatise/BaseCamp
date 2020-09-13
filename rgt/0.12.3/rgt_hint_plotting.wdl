version 1.0

task RgthintPlotting {
  input {
    File? organism
    File? reads_file
    File? region_file
    File? reads_file_one
    File? reads_file_two
    File? motif_file
    File? bias_table
    File? bias_table_one
    File? bias_table_two
    Int? window_size
    File? output_location
    String? output_prefix
    Boolean? seq_logo
    Boolean? bias_raw_bc_line
    Boolean? raw_bc_line
    Boolean? strand_line
    Boolean? un_strand_line
    Boolean? bias_line
    Boolean? atac_dnase_line
    Boolean? bias_raw_bc_strand_line_two
    Boolean? fragment_raw_size_line
    Boolean? fragment_bc_size_line
  }
  command <<<
    rgt_hint plotting \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""} \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(reads_file_one) then ("--reads-file1 " +  '"' + reads_file_one + '"') else ""} \
      ~{if defined(reads_file_two) then ("--reads-file2 " +  '"' + reads_file_two + '"') else ""} \
      ~{if defined(motif_file) then ("--motif-file " +  '"' + motif_file + '"') else ""} \
      ~{if defined(bias_table) then ("--bias-table " +  '"' + bias_table + '"') else ""} \
      ~{if defined(bias_table_one) then ("--bias-table1 " +  '"' + bias_table_one + '"') else ""} \
      ~{if defined(bias_table_two) then ("--bias-table2 " +  '"' + bias_table_two + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (seq_logo) then "--seq-logo" else ""} \
      ~{if (bias_raw_bc_line) then "--bias-raw-bc-line" else ""} \
      ~{if (raw_bc_line) then "--raw-bc-line" else ""} \
      ~{if (strand_line) then "--strand-line" else ""} \
      ~{if (un_strand_line) then "--unstrand-line" else ""} \
      ~{if (bias_line) then "--bias-line" else ""} \
      ~{if (atac_dnase_line) then "--atac-dnase-line" else ""} \
      ~{if (bias_raw_bc_strand_line_two) then "--bias-raw-bc-strand-line2" else ""} \
      ~{if (fragment_raw_size_line) then "--fragment-raw-size-line" else ""} \
      ~{if (fragment_bc_size_line) then "--fragment-bc-size-line" else ""}
  >>>
  parameter_meta {
    organism: "Organism considered on the analysis. Check our full\\ndocumentation for all available options. All default\\nfiles such as genomes will be based on the chosen\\norganism and the data.config file."
    reads_file: ""
    region_file: ""
    reads_file_one: ""
    reads_file_two: ""
    motif_file: ""
    bias_table: ",FILE1_R"
    bias_table_one: ",FILE1_R"
    bias_table_two: ",FILE1_R"
    window_size: ""
    output_location: "Path where the output bias table files will be\\nwritten."
    output_prefix: "The prefix for results files."
    seq_logo: ""
    bias_raw_bc_line: ""
    raw_bc_line: ""
    strand_line: ""
    un_strand_line: ""
    bias_line: ""
    atac_dnase_line: ""
    bias_raw_bc_strand_line_two: ""
    fragment_raw_size_line: ""
    fragment_bc_size_line: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_location = "${in_output_location}"
  }
}