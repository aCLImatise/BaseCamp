version 1.0

task PurgeHaplotigsPurge {
  input {
    Boolean? genome
    Boolean? coverage
    Boolean? threads
    Boolean? out_prefix
    Boolean? repeats
    Boolean? dot_plots
    Boolean? bam
    Boolean? falcon_naming
    Boolean? align_cov
    Boolean? max_match
    Boolean? minimap_indexing_drop
    Boolean? verbose
    Boolean? limit_io
    Boolean? wind_min
    Boolean? wind_nmax
  }
  command <<<
    purge_haplotigs purge \
      ~{if (genome) then "-genome" else ""} \
      ~{if (coverage) then "-coverage" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (out_prefix) then "-outprefix" else ""} \
      ~{if (repeats) then "-repeats" else ""} \
      ~{if (dot_plots) then "-dotplots" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (falcon_naming) then "-falconNaming" else ""} \
      ~{if (align_cov) then "-align_cov" else ""} \
      ~{if (max_match) then "-max_match" else ""} \
      ~{if (minimap_indexing_drop) then "-I" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (limit_io) then "-limit_io" else ""} \
      ~{if (wind_min) then "-wind_min" else ""} \
      ~{if (wind_nmax) then "-wind_nmax" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome: "Genome assembly in fasta format. Needs to be indexed with samtools faidx."
    coverage: "Contig by contig coverage stats csv file from the previous step."
    threads: "Number of worker threads to use. DEFAULT = 4"
    out_prefix: "Prefix for the curated assembly. DEFAULT = \\\"curated\\\""
    repeats: "BED-format file of repeats to ignore during analysis."
    dot_plots: "Generate dotplots for manual inspection."
    bam: "Samtools-indexed bam file of aligned and sorted reads/subreads to the\\nreference, required for generating dotplots."
    falcon_naming: "Rename contigs in the style used by FALCON/FALCON-unzip"
    align_cov: "Percent cutoff for identifying a contig as a haplotig. DEFAULT = 70"
    max_match: "Percent cutoff for identifying repetitive contigs. Ignored when\\nusing repeat annotations (-repeats). DEFAULT = 250"
    minimap_indexing_drop: "Minimap2 indexing, drop minimisers every N bases, DEFAULT = 4G"
    verbose: "Print EVERYTHING."
    limit_io: "Limit for I/O intensive jobs. DEFAULT = -threads"
    wind_min: "Min window size for BED coverage plots (for dotplots). DEFAULT = 5000"
    wind_nmax: "Max windows per contig for BED coverage plots (for dotplots). DEFAULT = 200"
  }
  output {
    File out_stdout = stdout()
  }
}