version 1.0

task FastqSample {
  input {
    String? input_name_prefix
    Int? total_number_supplied
    Int? length_single_supplied
    Boolean? reads_unmated_expected
    String? output_name_prefix
    Boolean? automatically_include_coverage
    String? ignore_reads_shorter
    Boolean? max
    Int? genome_size
    String? desired_coverage_output
    Int? mated_reads_output
    Float? output_t_pairs
    String? output_readspairs_b
    String? opts
  }
  command <<<
    fastqSample \
      ~{opts} \
      ~{if defined(input_name_prefix) then ("-I " +  '"' + input_name_prefix + '"') else ""} \
      ~{if defined(total_number_supplied) then ("-T " +  '"' + total_number_supplied + '"') else ""} \
      ~{if defined(length_single_supplied) then ("-L " +  '"' + length_single_supplied + '"') else ""} \
      ~{if (reads_unmated_expected) then "-U" else ""} \
      ~{if defined(output_name_prefix) then ("-O " +  '"' + output_name_prefix + '"') else ""} \
      ~{if (automatically_include_coverage) then "-A" else ""} \
      ~{if defined(ignore_reads_shorter) then ("-m " +  '"' + ignore_reads_shorter + '"') else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if defined(genome_size) then ("-g " +  '"' + genome_size + '"') else ""} \
      ~{if defined(desired_coverage_output) then ("-c " +  '"' + desired_coverage_output + '"') else ""} \
      ~{if defined(mated_reads_output) then ("-p " +  '"' + mated_reads_output + '"') else ""} \
      ~{if defined(output_t_pairs) then ("-f " +  '"' + output_t_pairs + '"') else ""} \
      ~{if defined(output_readspairs_b) then ("-b " +  '"' + output_readspairs_b + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_name_prefix: "input name (prefix) of the reads"
    total_number_supplied: "total number of mate pairs in the input (if not supplied, will be counted)"
    length_single_supplied: "length of a single read (if not supplied, will be determined)"
    reads_unmated_expected: "reads are unmated, expected in *.u.fastq"
    output_name_prefix: "output name (prefix) of the reads (default is same as -I)"
    automatically_include_coverage: "automatically include coverage or number of reads in the output name"
    ignore_reads_shorter: "ignore reads shorter than L bases"
    max: "don't sample randomly, pick the longest reads"
    genome_size: "genome size"
    desired_coverage_output: "desired coverage in the output reads"
    mated_reads_output: "for mated reads, output 2N reads, or N pairs of reads\\nfor unmated reads, output N reads"
    output_t_pairs: "output F * T pairs of reads (T as above in -t option)\\n0.0 < F <= 1.0"
    output_readspairs_b: "output reads/pairs until B bases is exceeded"
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}