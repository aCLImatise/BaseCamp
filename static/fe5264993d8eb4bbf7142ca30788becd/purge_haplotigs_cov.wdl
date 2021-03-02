version 1.0

task PurgeHaplotigsCov {
  input {
    Boolean? in
    Boolean? low
    Boolean? mid
    File? out
    Boolean? junk
    Boolean? suspect
    Int? h
  }
  command <<<
    purge_haplotigs cov \
      ~{if (in) then "-in" else ""} \
      ~{if (low) then "-low" else ""} \
      ~{if (mid) then "-mid" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (junk) then "-junk" else ""} \
      ~{if (suspect) then "-suspect" else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "The bedtools genomecov output that was produced from 'purge_haplotigs readhist'"
    low: "The read depth low cutoff (use the histogram to eyeball these cutoffs)"
    mid: "The low point between the haploid and diploid peaks"
    out: "Choose an output file name (CSV format, DEFAULT = coverage_stats.csv)"
    junk: "Auto-assign contig as \\\"j\\\" (junk) if this percentage or greater of the contig is\\nlow/high coverage (DEFAULT = 80, > 100 = don't junk anything)"
    suspect: "Auto-assign contig as \\\"s\\\" (suspected haplotig) if this percentage or less of the\\ncontig is diploid level of coverage (DEFAULT = 80)\\n"
    h: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}