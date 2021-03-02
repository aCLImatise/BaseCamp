version 1.0

task Gstacks {
  input {
    Boolean? input_directory_containg
    Boolean? input_directory_containing
    Boolean? im_suffix_use
    Boolean? input_bam_files
    Boolean? path_population_map
    Boolean? output_directory_default
    Boolean? threads
    Boolean? model
    Boolean? var_alpha
    Boolean? gt_alpha
    Boolean? rm_pcr_duplicates
    Boolean? rm_unpaired_reads
    Boolean? ignore_pe_reads
    Boolean? unpaired
    Boolean? km_er_length
    Boolean? max_de_bruijn_reads
    Boolean? min_km_er_cov
    Boolean? write_alignments
    Boolean? min_mapq
    Boolean? max_clipped
    Boolean? max_insert_len
    Boolean? details
    Boolean? phasing_co_occurrences_thr_range
    Boolean? phasing_dont_prune_he_ts
  }
  command <<<
    gstacks \
      ~{if (input_directory_containg) then "-P" else ""} \
      ~{if (input_directory_containing) then "-I" else ""} \
      ~{if (im_suffix_use) then "-S" else ""} \
      ~{if (input_bam_files) then "-B" else ""} \
      ~{if (path_population_map) then "-M" else ""} \
      ~{if (output_directory_default) then "-O" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (model) then "--model" else ""} \
      ~{if (var_alpha) then "--var-alpha" else ""} \
      ~{if (gt_alpha) then "--gt-alpha" else ""} \
      ~{if (rm_pcr_duplicates) then "--rm-pcr-duplicates" else ""} \
      ~{if (rm_unpaired_reads) then "--rm-unpaired-reads" else ""} \
      ~{if (ignore_pe_reads) then "--ignore-pe-reads" else ""} \
      ~{if (unpaired) then "--unpaired" else ""} \
      ~{if (km_er_length) then "--kmer-length" else ""} \
      ~{if (max_de_bruijn_reads) then "--max-debruijn-reads" else ""} \
      ~{if (min_km_er_cov) then "--min-kmer-cov" else ""} \
      ~{if (write_alignments) then "--write-alignments" else ""} \
      ~{if (min_mapq) then "--min-mapq" else ""} \
      ~{if (max_clipped) then "--max-clipped" else ""} \
      ~{if (max_insert_len) then "--max-insert-len" else ""} \
      ~{if (details) then "--details" else ""} \
      ~{if (phasing_co_occurrences_thr_range) then "--phasing-cooccurrences-thr-range" else ""} \
      ~{if (phasing_dont_prune_he_ts) then "--phasing-dont-prune-hets" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_directory_containg: ": input directory containg '*.matches.bam' files created by the\\nde novo Stacks pipeline, ustacks-cstacks-sstacks-tsv2bam"
    input_directory_containing: ": input directory containing BAM files"
    im_suffix_use: ": with -I/-M, suffix to use to build BAM file names: by default this\\nis just '.bam', i.e. the program expects 'SAMPLE_NAME.bam'"
    input_bam_files: ": input BAM file(s)"
    path_population_map: ": path to a population map giving the list of samples"
    output_directory_default: ": output directory (default: none with -B; with -P same as the input\\ndirectory)"
    threads: ": number of threads to use (default: 1)"
    model: ": model to use to call variants and genotypes; one of\\nmarukilow (default), marukihigh, or snp"
    var_alpha: ": alpha threshold for discovering SNPs (default: 0.01 for marukilow)"
    gt_alpha: ": alpha threshold for calling genotypes (default: 0.05)"
    rm_pcr_duplicates: ": remove all but one set ofread pairs of the same sample that\\nhave the same insert length (implies --rm-unpaired-reads)"
    rm_unpaired_reads: ": discard unpaired reads"
    ignore_pe_reads: ": ignore paired-end reads even if present in the input"
    unpaired: ": ignore read pairing (only for paired-end GBS; treat READ2's as if they were READ1's)"
    km_er_length: ": kmer length for the de Bruijn graph (default: 31, max. 31)"
    max_de_bruijn_reads: ": maximum number of reads to use in the de Bruijn graph (default: 1000)"
    min_km_er_cov: ": minimum coverage to consider a kmer (default: 2)"
    write_alignments: ": save read alignments (heavy BAM files)"
    min_mapq: ": minimum PHRED-scaled mapping quality to consider a read (default: 10)"
    max_clipped: ": maximum soft-clipping level, in fraction of read length (default: 0.20)"
    max_insert_len: ": maximum allowed sequencing insert length (default: 1000)"
    details: ": write a heavier output"
    phasing_co_occurrences_thr_range: ": range of edge coverage thresholds to\\niterate over when building the graph of allele cooccurrences for\\nSNP phasing (default: 1,2)"
    phasing_dont_prune_he_ts: ": don't try to ignore dubious heterozygote\\ngenotypes during phasing\\n"
  }
  output {
    File out_stdout = stdout()
  }
}