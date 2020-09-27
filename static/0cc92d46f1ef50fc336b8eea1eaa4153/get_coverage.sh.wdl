version 1.0

task GetCoveragesh {
  input {
    Int? file_sorted_bam
  }
  command <<<
    get_coverage_sh \
      ~{if defined(file_sorted_bam) then ("-i " +  '"' + file_sorted_bam + '"') else ""}
  >>>
  parameter_meta {
    file_sorted_bam: "file in sorted BAM format\\n-o output directory (optional)\\n-d database to extract length. Fasta file used to map against\\n-m max depth reported (default 500)\\n-p reports genome coverage for all positions in BEDGRAPH format includig 0 positions.\\nDefault option is bedtools genomecov that needs the reference genome\\n-s sample name\\n-g group name (optional). If unset, samples will be gathered in NO_GROUP group\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}