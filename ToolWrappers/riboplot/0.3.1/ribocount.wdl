version 1.0

task Ribocount {
  input {
    Int? read_lengths
    Int? read_offsets
    Boolean? count_five
    Boolean? count_three
    File? html_file
    File? output_path
    Boolean? debug
    File? ribo_file
    File? transcriptome_fast_a
  }
  command <<<
    ribocount \
      ~{if defined(read_lengths) then ("--read_lengths " +  '"' + read_lengths + '"') else ""} \
      ~{if defined(read_offsets) then ("--read_offsets " +  '"' + read_offsets + '"') else ""} \
      ~{if (count_five) then "--count_five" else ""} \
      ~{if (count_three) then "--count_three" else ""} \
      ~{if defined(html_file) then ("--html_file " +  '"' + html_file + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(ribo_file) then ("--ribo_file " +  '"' + ribo_file + '"') else ""} \
      ~{if defined(transcriptome_fast_a) then ("--transcriptome_fasta " +  '"' + transcriptome_fast_a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_lengths: "Read lengths to consider (default: 0). Multiple read\\nlengths should be separated by commas. If multiple\\nread lengths are specified, corresponding read offsets\\nshould also be specified. If you do not wish to apply\\nan offset, please input 0 for the corresponding read\\nlength"
    read_offsets: "Read offsets (default: 0). Multiple read offsets\\nshould be separated by commas"
    count_five: "Flag. Output reads in 5' region"
    count_three: "Flag. Output reads in 3' region"
    html_file: "Output file for results (HTML)"
    output_path: "Files are saved in this directory"
    debug: "Flag. Produce debug output"
    ribo_file: "Ribo-Seq alignment file in BAM format"
    transcriptome_fast_a: "FASTA format file of the transcriptome\\n"
  }
  output {
    File out_stdout = stdout()
    File out_html_file = "${in_html_file}"
    File out_output_path = "${in_output_path}"
  }
}