version 1.0

task PBcR {
  input {
    Int? length
    Int? partitions
    String? library_name
    Int? threads
    Boolean? short_reads
    Boolean? genome_size
    Int? max_coverage
    Int? max_gap
    Boolean? coverage_cut_off
  }
  command <<<
    PBcR \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{if defined(partitions) then ("-partitions " +  '"' + partitions + '"') else ""} \
      ~{if defined(library_name) then ("-libraryname " +  '"' + library_name + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if (short_reads) then "-shortReads" else ""} \
      ~{if (genome_size) then "-genomeSize" else ""} \
      ~{if defined(max_coverage) then ("-maxCoverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(max_gap) then ("-maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if (coverage_cut_off) then "-coverageCutoff" else ""}
  >>>
  parameter_meta {
    length: "Minimum length of PacBio sequences to correct/output."
    partitions: "Number of partitions for consensus"
    library_name: "Name of the library; freeformat text. Must be unique from any library names in the FRG files used for correction"
    threads: "Number of threads to use for correction. Defaults to available cores on the local system"
    short_reads: "Use if the sequences for correction are 100bp or shorter."
    genome_size: "<int>          Specify the approximate genome size. This will be used to compute the maximum number of bases to correct"
    max_coverage: "Maximum coverage of PacBio sequences to correct. Only the longest sequences adding up to this coverage will be corrected. Requires genomeSize to be specified. Defaults to 40X"
    max_gap: "The maximum uncorrected PacBio gap that will be allowed. When there is no short-read coverage for a region, by default the pipeline will split a PacBio sequence. This option will attempt to use other PacBio sequences to patch the gap and avoid splitting the read. Sequences where the gaps have no support will still be broken. For example, specifying 50, will mean any gap 50bp or smaller can have no short-read coverage (but has other PacBio sequence support) without splitting the PacBio sequence. Warning: this can allow more sequences that went through the SMRTbell to not be fixed."
    coverage_cut_off: "Specify the pacBio coverage (integer) used to separate repeat copies instead of automatically estimating."
  }
  output {
    File out_stdout = stdout()
  }
}