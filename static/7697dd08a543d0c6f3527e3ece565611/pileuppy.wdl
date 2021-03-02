version 1.0

task Pileuppy {
  input {
    File? fast_a_ref
    File? optional_output_file
    Int? region
    Int? display
    Int? size
    Int? min_mapq
    Int? min_bq
    Int? req_flags
    Int? filt_flags
    Boolean? only_use_reads
    Boolean? join_samples
    Boolean? skip_bq
    Boolean? show_names
    String? header
    Boolean? skip_legend
    Boolean? skip_empty
    Boolean? skip_chrom
    File? ansiwhiteblack__scheme
    Boolean? no_logo
    Boolean? no_columns
    File required_input_indexed
  }
  command <<<
    pileuppy \
      ~{required_input_indexed} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if defined(optional_output_file) then ("--output " +  '"' + optional_output_file + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(display) then ("--display " +  '"' + display + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_bq) then ("--min-bq " +  '"' + min_bq + '"') else ""} \
      ~{if defined(req_flags) then ("--req-flags " +  '"' + req_flags + '"') else ""} \
      ~{if defined(filt_flags) then ("--filt-flags " +  '"' + filt_flags + '"') else ""} \
      ~{if (only_use_reads) then "-s" else ""} \
      ~{if (join_samples) then "--join-samples" else ""} \
      ~{if (skip_bq) then "--skip-bq" else ""} \
      ~{if (show_names) then "--show-names" else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if (skip_legend) then "--skip-legend" else ""} \
      ~{if (skip_empty) then "--skip-empty" else ""} \
      ~{if (skip_chrom) then "--skip-chrom" else ""} \
      ~{if defined(ansiwhiteblack__scheme) then ("-S " +  '"' + ansiwhiteblack__scheme + '"') else ""} \
      ~{if (no_logo) then "--no-logo" else ""} \
      ~{if (no_columns) then "--no-columns" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pileuppy:1.1.1--py_0"
  }
  parameter_meta {
    fast_a_ref: "Optional: Input reference indexed FASTA file."
    optional_output_file: "Optional: Output file [stdout]. Disables colors."
    region: "Required: pileup region in one of the following formats:\\nchrom:pos - pileup of a single position,\\nchrom:start-end - closed interval, 1-based positions,\\nchrom:pos^size - same as chrom:[pos - size]-[pos + size]."
    display: "Display additional INT positions around the region.\\nOnly displays reads that cover <region>."
    size: "|none       Split region longer than INT [150]."
    min_mapq: "Skip alignments with mapQ less than INT [0]."
    min_bq: "Print ? instead of base pairs with quality less than INT [0]."
    req_flags: "Required flags: skip reads with mask bits unset [0]."
    filt_flags: "Filter flags: skip reads with mask bits set [1796]."
    only_use_reads: "[STR [STR ...]], --samples [STR [STR ...]]\\nOnly use reads with matching samples. You can use multiple regex patterns\\nor exact sample names. Pattern must match the sample name from start to end."
    join_samples: "Do not split single BAM/CRAM file into multiple columns with different samples."
    skip_bq: "Do not print base qualities."
    show_names: "Print read names in the header."
    header: "|comment|plain\\nHow to write headers. If comment, every header line will start with \\\"#\\\"."
    skip_legend: "Do not write legend."
    skip_empty: "Skip lines with zero coverage"
    skip_chrom: "Do not show chromosome name"
    ansiwhiteblack__scheme: "|ansi|white|black, --scheme none|ansi|white|black\\nPossible color schemes:\\nnone - no colors (default if -o FILE),\\nansi - 16 colors,\\nwhite - 256 colors with white background,\\nblack - 256 colors with black background (default unless -o FILE)."
    no_logo: "Do not use logo colors for nucleotides."
    no_columns: "Do not highlight columns with a different color."
    required_input_indexed: "Required: Input indexed BAM/CRAM files. Allows format name=path,\\nin that case name will be displayed in pileup instead of filename."
  }
  output {
    File out_stdout = stdout()
    File out_optional_output_file = "${in_optional_output_file}"
  }
}