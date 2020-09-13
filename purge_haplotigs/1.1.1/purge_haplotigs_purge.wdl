version 1.0

task PurgeHaplotigsPurge {
  input {
    Boolean? genome_genome_assembly
    Boolean? coverage_contig_file
    Boolean? threads_number_use
    Boolean? outprefix_prefix_curated
    Boolean? repeats_bedformat_file
    Boolean? dotplots_generate_dotplots
    Boolean? bam_samtoolsindexed_bam
    Boolean? falconnaming_rename_contigs
    Boolean? aligncov_percent_cutoff
    Boolean? maxmatch_percent_cutoff
    Boolean? minimap_indexing_drop
    Boolean? verbose_print_everything
    Boolean? limit_io
    Boolean? wind_min
    Boolean? wind_nmax
  }
  command <<<
    purge_haplotigs purge \
      ~{if (genome_genome_assembly) then "-g" else ""} \
      ~{if (coverage_contig_file) then "-c" else ""} \
      ~{if (threads_number_use) then "-t" else ""} \
      ~{if (outprefix_prefix_curated) then "-o" else ""} \
      ~{if (repeats_bedformat_file) then "-r" else ""} \
      ~{if (dotplots_generate_dotplots) then "-d" else ""} \
      ~{if (bam_samtoolsindexed_bam) then "-b" else ""} \
      ~{if (falconnaming_rename_contigs) then "-f" else ""} \
      ~{if (aligncov_percent_cutoff) then "-a" else ""} \
      ~{if (maxmatch_percent_cutoff) then "-m" else ""} \
      ~{if (minimap_indexing_drop) then "-I" else ""} \
      ~{if (verbose_print_everything) then "-v" else ""} \
      ~{if (limit_io) then "-limit_io" else ""} \
      ~{if (wind_min) then "-wind_min" else ""} \
      ~{if (wind_nmax) then "-wind_nmax" else ""}
  >>>
  parameter_meta {
    genome_genome_assembly: "/ -genome        Genome assembly in fasta format. Needs to be indexed with samtools faidx."
    coverage_contig_file: "/ -coverage      Contig by contig coverage stats csv file from the previous step."
    threads_number_use: "/ -threads       Number of worker threads to use. DEFAULT = 4"
    outprefix_prefix_curated: "/ -outprefix     Prefix for the curated assembly. DEFAULT = \\\"curated\\\""
    repeats_bedformat_file: "/ -repeats       BED-format file of repeats to ignore during analysis."
    dotplots_generate_dotplots: "/ -dotplots      Generate dotplots for manual inspection."
    bam_samtoolsindexed_bam: "/ -bam           Samtools-indexed bam file of aligned and sorted reads/subreads to the\\nreference, required for generating dotplots."
    falconnaming_rename_contigs: "/ -falconNaming  Rename contigs in the style used by FALCON/FALCON-unzip"
    aligncov_percent_cutoff: "/ -align_cov     Percent cutoff for identifying a contig as a haplotig. DEFAULT = 70"
    maxmatch_percent_cutoff: "/ -max_match     Percent cutoff for identifying repetitive contigs. Ignored when\\nusing repeat annotations (-repeats). DEFAULT = 250"
    minimap_indexing_drop: "Minimap2 indexing, drop minimisers every N bases, DEFAULT = 4G"
    verbose_print_everything: "/ -verbose       Print EVERYTHING."
    limit_io: "Limit for I/O intensive jobs. DEFAULT = -threads"
    wind_min: "Min window size for BED coverage plots (for dotplots). DEFAULT = 5000"
    wind_nmax: "Max windows per contig for BED coverage plots (for dotplots). DEFAULT = 200"
  }
  output {
    File out_stdout = stdout()
  }
}