version 1.0

task MethylpyBamqualityfilter {
  input {
    File? input_file
    File? output_file
    File? ref_fast_a
    Int? min_mapq
    Int? min_num_ch
    Int? max_mch_level
    Int? buffer_line_number
  }
  command <<<
    methylpy bam_quality_filter \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(ref_fast_a) then ("--ref-fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_num_ch) then ("--min-num-ch " +  '"' + min_num_ch + '"') else ""} \
      ~{if defined(max_mch_level) then ("--max-mch-level " +  '"' + max_mch_level + '"') else ""} \
      ~{if defined(buffer_line_number) then ("--buffer-line-number " +  '"' + buffer_line_number + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "BAM file to filter. (default: None)"
    output_file: "Name of output file (default: None)"
    ref_fast_a: "string indicating the path to a fasta file containing\\nthe sequences you used for mapping (default: None)"
    min_mapq: "Minimum MAPQ for reads to be included. (default: 30)"
    min_num_ch: "Minimum number of CH sites for mCH level filter to be\\napplied. (default: 30)"
    max_mch_level: "Maximum mCH level for reads to be included. (default:\\n0.7)"
    buffer_line_number: "size of buffer for reads to be written on hard drive.\\n(default: 100000)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}