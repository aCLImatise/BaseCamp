version 1.0

task MethylpyBamQualityFilter {
  input {
    String? input_file
    String? output_file
    String? ref_fast_a
    Int? min_mapq
    Int? min_num_ch
    Int? max_mch_level
    String? buffer_line_number
  }
  command <<<
    methylpy bam-quality-filter \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(ref_fast_a) then ("--ref-fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_num_ch) then ("--min-num-ch " +  '"' + min_num_ch + '"') else ""} \
      ~{if defined(max_mch_level) then ("--max-mch-level " +  '"' + max_mch_level + '"') else ""} \
      ~{if defined(buffer_line_number) then ("--buffer-line-number " +  '"' + buffer_line_number + '"') else ""}
  >>>
  parameter_meta {
    input_file: "BAM file to filter. (default: None)"
    output_file: "Name of output file (default: None)"
    ref_fast_a: "string indicating the path to a fasta file containing the sequences you used for mapping (default: None)"
    min_mapq: "Minimum MAPQ for reads to be included. (default: 30)"
    min_num_ch: "Minimum number of CH sites for mCH level filter to be applied. (default: 30)"
    max_mch_level: "Maximum mCH level for reads to be included. (default: 0.7)"
    buffer_line_number: "size of buffer for reads to be written on hard drive. (default: 100000)"
  }
}