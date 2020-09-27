version 1.0

task Svviz {
  input {
    File? bam
    File? type
    File? annotations
    File? fast_a
    Int? min_mapq
    Int? pair_min_mapq
    Int? max_multi_mapping_similarity
    Int? aln_quality
    Float? aln_score_delta
    Boolean? include_supplementary
    Boolean? fast
    String? sample_reads
    Int? max_reads
    Int? max_size
    Int? max_deletion_size
    String? port
    String? processes
    Boolean? no_web
    File? save_reads
    String? verbose
    File? export
    File? format
    Boolean? open_exported
    String? converter
    Boolean? thicker_lines
    Int? context
    Boolean? flanks
    Boolean? skip_cigar
    Boolean? dot_plots
    Boolean? export_insert_sizes
    File? summary
    Boolean? lenient
    String ref
    String breakpoints
  }
  command <<<
    svviz \
      ~{ref} \
      ~{breakpoints} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(annotations) then ("--annotations " +  '"' + annotations + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(pair_min_mapq) then ("--pair-min-mapq " +  '"' + pair_min_mapq + '"') else ""} \
      ~{if defined(max_multi_mapping_similarity) then ("--max-multimapping-similarity " +  '"' + max_multi_mapping_similarity + '"') else ""} \
      ~{if defined(aln_quality) then ("--aln-quality " +  '"' + aln_quality + '"') else ""} \
      ~{if defined(aln_score_delta) then ("--aln-score-delta " +  '"' + aln_score_delta + '"') else ""} \
      ~{if (include_supplementary) then "--include-supplementary" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if defined(sample_reads) then ("--sample-reads " +  '"' + sample_reads + '"') else ""} \
      ~{if defined(max_reads) then ("--max-reads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(max_deletion_size) then ("--max-deletion-size " +  '"' + max_deletion_size + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (no_web) then "--no-web" else ""} \
      ~{if defined(save_reads) then ("--save-reads " +  '"' + save_reads + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(export) then ("--export " +  '"' + export + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (open_exported) then "--open-exported" else ""} \
      ~{if defined(converter) then ("--converter " +  '"' + converter + '"') else ""} \
      ~{if (thicker_lines) then "--thicker-lines" else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{if (flanks) then "--flanks" else ""} \
      ~{if (skip_cigar) then "--skip-cigar" else ""} \
      ~{if (dot_plots) then "--dotplots" else ""} \
      ~{if (export_insert_sizes) then "--export-insert-sizes" else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if (lenient) then "--lenient" else ""}
  >>>
  parameter_meta {
    bam: "sorted, indexed bam file containing reads of interest to plot; can be specified multiple\\ntimes to load multiple samples"
    type: "event type: either del[etion], ins[ertion], inv[ersion], mei (mobile element insertion),\\ntra[nslocation], largedeletion (ldel), breakend (bkend) or batch (for reading variants\\nfrom a VCF file in batch mode)"
    annotations: "bed or gtf file containing annotations to plot; will be compressed and indexed using\\nsamtools tabix in place if needed (can specify multiple annotations files)"
    fast_a: "An additional indexable fasta file specifying insertion sequences (eg mobile element\\nsequences)"
    min_mapq: "minimum mapping quality for reads (default: 0)"
    pair_min_mapq: "include only read pairs where at least one read end both exceeds PAIR_MAPQ and\\nfalls near the variant being analyzed (default: 0)"
    max_multi_mapping_similarity: "maximum ratio between best and second-best alignment scores within visualization\\nregion in order to retain read (default: 0.95)"
    aln_quality: "minimum score of the Smith-Waterman alignment against the ref or alt allele in order to be\\nconsidered (multiplied by 2)"
    aln_score_delta: "minimum difference in scores between ref alignment score and alt alignment score\\nto be assigned to one allele (use an integer to specify a hard score difference\\nthreshold, or a float to specify a score difference relative to the read size;\\ndefault: 2)"
    include_supplementary: "include supplementary alignments (ie, those with the 0x800 bit set in the bam flags);\\ndefault: false"
    fast: "implements some optimizations designed to find exact sequence matches quickly;\\nwill substantially increase speed on Illumina data but may result in some inexact\\nresults; default: false"
    sample_reads: "use at most this many reads (pairs), sampling randomly if need be, useful\\nwhen running in batch mode (default: use all reads)"
    max_reads: "maximum number of reads allowed, totaled across all samples, useful when running in batch\\nmode (default: unlimited)"
    max_size: "maximum event size allowed, totaled across all chromosome parts in bp; if either the ref\\nallele or alt allele exceeds this size, it will be skipped (default: unlimited)"
    max_deletion_size: "deletion size above which the deletion is analyzed in breakend mode (default: don't\\nconvert to breakend mode)"
    port: "define a port to use for the web browser (default: random port)"
    processes: "how many processes to use for read realignment (default: use all available cores)"
    no_web: "don't show the web interface"
    save_reads: "save relevant reads to this file (bam)"
    verbose: "how verbose the progress and logging should be"
    export: "export view to file; in single variant-mode, the exported file format is determined from\\nthe filename extension unless --format is specified; in batch mode, this should be the name\\nof a directory into which to save the files (use --format to set format); setting --export\\nautomatically sets --no-web"
    format: "file export format, either svg, png or\\npdf; by default, this is pdf (batch mode) or automatically identified from the file\\nextension of --export"
    open_exported: "automatically open the exported file"
    converter: "which program should be used to convert the output into PDF or PNG; choose from [webkitToPDF,\\nlibrsvg, inkscape] (default: auto)"
    thicker_lines: "Reads are shown with thicker lines, potentially overlapping one another, but increasing\\ncontrast when zoomed out"
    context: "Number of additional nucleotides of genomic context to either side of the visualization\\n(useful for showing nearby annotations)"
    flanks: "Show reads in regions flanking the structural variant; these reads do not\\ncontribute to the ref or alt allele read counts (default: false)"
    skip_cigar: "Don't color mismatches, insertions and deletions"
    dot_plots: "generate dotplots to show sequence homology within the aligned region; requires some\\nadditional optional python libraries (scipy and PIL) and may take several minutes for\\nlonger variants"
    export_insert_sizes: "plot the insert size distributions for each sample, for each event"
    summary: "save summary statistics to this (tab-delimited) file"
    lenient: "lowers the minimum alignment quality, showing reads even when breakpoints are only\\napproximately correct, or reads of lower quality (eg PacBio); and requires a larger\\ndifference in alignment scores in order to assign a read to an allele"
    ref: "reference fasta file (a .faidx index file will be created if it doesn't exist so you need \\nwrite permissions for this directory)"
    breakpoints: "information about the breakpoint to be analyzed; see below for information"
  }
  output {
    File out_stdout = stdout()
    File out_save_reads = "${in_save_reads}"
  }
}