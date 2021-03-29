version 1.0

task SamtoolsCoverage {
  input {
    File? bam_list
    Int? min_read_len
    Int? min_mq
    Int? min_bq
    Int? rf
    Int? ff
    Boolean? histogram
    Boolean? ascii
    File? write_output_file
    Boolean? no_header
    Int? n_bins
    String? region
    File? input_fmt_option
    File? reference
    Int? verbosity
    String r_name
    String startpos
    String endpos
    String num_reads
    String cov_bases
    String coverage
    String mean_depth
    String mean_base_q
    String mean_mapq
  }
  command <<<
    samtools coverage \
      ~{r_name} \
      ~{startpos} \
      ~{endpos} \
      ~{num_reads} \
      ~{cov_bases} \
      ~{coverage} \
      ~{mean_depth} \
      ~{mean_base_q} \
      ~{mean_mapq} \
      ~{if defined(bam_list) then ("--bam-list " +  '"' + bam_list + '"') else ""} \
      ~{if defined(min_read_len) then ("--min-read-len " +  '"' + min_read_len + '"') else ""} \
      ~{if defined(min_mq) then ("--min-MQ " +  '"' + min_mq + '"') else ""} \
      ~{if defined(min_bq) then ("--min-BQ " +  '"' + min_bq + '"') else ""} \
      ~{if defined(rf) then ("--rf " +  '"' + rf + '"') else ""} \
      ~{if defined(ff) then ("--ff " +  '"' + ff + '"') else ""} \
      ~{if (histogram) then "--histogram" else ""} \
      ~{if (ascii) then "--ascii" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if defined(n_bins) then ("--n-bins " +  '"' + n_bins + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.12--hd5e65b6_0"
  }
  parameter_meta {
    bam_list: "list of input BAM filenames, one per line"
    min_read_len: "ignore reads shorter than INT bp [0]"
    min_mq: "mapping quality threshold [0]"
    min_bq: "base quality threshold [0]"
    rf: "required flags: skip reads with mask bits unset []"
    ff: "filter flags: skip reads with mask bits set\\n[UNMAP,SECONDARY,QCFAIL,DUP]"
    histogram: "show histogram instead of tabular output"
    ascii: "show only ASCII characters in histogram"
    write_output_file: "write output to FILE [stdout]"
    no_header: "don't print a header in tabular mode"
    n_bins: "number of bins in histogram [terminal width - 40]"
    region: "show specified region. Format: chr:start-end."
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    verbosity: "Set level of verbosity"
    r_name: "Reference name / chromosome"
    startpos: "Start position"
    endpos: "End position (or sequence length)"
    num_reads: "Number reads aligned to the region (after filtering)"
    cov_bases: "Number of covered bases with depth >= 1"
    coverage: "Proportion of covered bases [0..1]"
    mean_depth: "Mean depth of coverage"
    mean_base_q: "Mean baseQ in covered region"
    mean_mapq: "Mean mapQ of selected reads"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}