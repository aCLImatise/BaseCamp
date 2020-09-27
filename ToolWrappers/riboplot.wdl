version 1.0

task Riboplot {
  input {
    File? rna_file
    Int? read_lengths
    Int? read_offsets
    String? color_scheme
    File? html_file
    File? output_path
    Boolean? debug
    File? ribo_file
    File? transcriptome_fast_a
    String? transcript_name
  }
  command <<<
    riboplot \
      ~{if defined(rna_file) then ("--rna_file " +  '"' + rna_file + '"') else ""} \
      ~{if defined(read_lengths) then ("--read_lengths " +  '"' + read_lengths + '"') else ""} \
      ~{if defined(read_offsets) then ("--read_offsets " +  '"' + read_offsets + '"') else ""} \
      ~{if defined(color_scheme) then ("--color_scheme " +  '"' + color_scheme + '"') else ""} \
      ~{if defined(html_file) then ("--html_file " +  '"' + html_file + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(ribo_file) then ("--ribo_file " +  '"' + ribo_file + '"') else ""} \
      ~{if defined(transcriptome_fast_a) then ("--transcriptome_fasta " +  '"' + transcriptome_fast_a + '"') else ""} \
      ~{if defined(transcript_name) then ("--transcript_name " +  '"' + transcript_name + '"') else ""}
  >>>
  parameter_meta {
    rna_file: "RNA-Seq alignment file (BAM)"
    read_lengths: "Read lengths to consider (default: 0). Multiple read\\nlengths should be separated by commas. If multiple\\nread lengths are specified, corresponding read offsets\\nshould also be specified. If you do not wish to apply\\nan offset, please input 0 for the corresponding read\\nlength"
    read_offsets: "Read offsets (default: 0). Multiple read offsets\\nshould be separated by commas"
    color_scheme: "Color scheme to use (default: default)"
    html_file: "Output file for results (HTML)"
    output_path: "Files are saved in this directory"
    debug: "Flag. Produce debug output"
    ribo_file: "Ribo-Seq alignment file in BAM format"
    transcriptome_fast_a: "FASTA format file of the transcriptome"
    transcript_name: "Transcript name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_html_file = "${in_html_file}"
    File out_output_path = "${in_output_path}"
  }
}