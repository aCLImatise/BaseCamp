version 1.0

task PurgeHaplotigsCov {
  input {
    Boolean? bedtools_genomecov_output
    Boolean? low_read_depth
    Boolean? mid_low_point
    File? choose_csv_format
    Boolean? junk_autoassign_contig
    Boolean? suspect_autoassign_contig
    Int? h
  }
  command <<<
    purge_haplotigs cov \
      ~{if (bedtools_genomecov_output) then "-i" else ""} \
      ~{if (low_read_depth) then "-l" else ""} \
      ~{if (mid_low_point) then "-m" else ""} \
      ~{if (choose_csv_format) then "-o" else ""} \
      ~{if (junk_autoassign_contig) then "-j" else ""} \
      ~{if (suspect_autoassign_contig) then "-s" else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    bedtools_genomecov_output: "/ -in        The bedtools genomecov output that was produced from 'purge_haplotigs readhist'"
    low_read_depth: "/ -low       The read depth low cutoff (use the histogram to eyeball these cutoffs)"
    mid_low_point: "/ -mid       The low point between the haploid and diploid peaks"
    choose_csv_format: "/ -out       Choose an output file name (CSV format, DEFAULT = coverage_stats.csv)"
    junk_autoassign_contig: "/ -junk      Auto-assign contig as \\\"j\\\" (junk) if this percentage or greater of the contig is\\nlow/high coverage (DEFAULT = 80, > 100 = don't junk anything)"
    suspect_autoassign_contig: "/ -suspect   Auto-assign contig as \\\"s\\\" (suspected haplotig) if this percentage or less of the\\ncontig is diploid level of coverage (DEFAULT = 80)\\n"
    h: ""
  }
  output {
    File out_stdout = stdout()
    File out_choose_csv_format = "${in_choose_csv_format}"
  }
}