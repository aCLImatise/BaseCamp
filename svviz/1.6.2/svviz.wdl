version 1.0

task Svviz {
  input {
    String? bam
    String? type
    String? annotations
    String? fast_a
    String? min_mapq
    String? pair_min_mapq
    Int? max_multi_mapping_similarity
    String? aln_quality
    String? aln_score_delta
    Boolean? include_supplementary
    Boolean? fast
    String? sample_reads
    Int? max_reads
    Int? max_size
    Int? max_deletion_size
    String? port
    String? processes
    Boolean? no_web
    String? save_reads
    String? verbose
    String? export
    String? format
    Boolean? open_exported
    String? converter
    Boolean? thicker_lines
    String? context
    Boolean? flanks
    Boolean? skip_cigar
    Boolean? dot_plots
    Boolean? export_insert_sizes
    String? summary
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
      ~{true="--include-supplementary" false="" include_supplementary} \
      ~{true="--fast" false="" fast} \
      ~{if defined(sample_reads) then ("--sample-reads " +  '"' + sample_reads + '"') else ""} \
      ~{if defined(max_reads) then ("--max-reads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(max_deletion_size) then ("--max-deletion-size " +  '"' + max_deletion_size + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{true="--no-web" false="" no_web} \
      ~{if defined(save_reads) then ("--save-reads " +  '"' + save_reads + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(export) then ("--export " +  '"' + export + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--open-exported" false="" open_exported} \
      ~{if defined(converter) then ("--converter " +  '"' + converter + '"') else ""} \
      ~{true="--thicker-lines" false="" thicker_lines} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{true="--flanks" false="" flanks} \
      ~{true="--skip-cigar" false="" skip_cigar} \
      ~{true="--dotplots" false="" dot_plots} \
      ~{true="--export-insert-sizes" false="" export_insert_sizes} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{true="--lenient" false="" lenient}
  >>>
  parameter_meta {
    bam: "sorted, indexed bam file containing reads of interest to plot; can be specified multiple  times to load multiple samples"
    type: "event type: either del[etion], ins[ertion], inv[ersion], mei (mobile element insertion),  tra[nslocation], largedeletion (ldel), breakend (bkend) or batch (for reading variants   from a VCF file in batch mode)"
    annotations: "bed or gtf file containing annotations to plot; will be compressed and indexed using  samtools tabix in place if needed (can specify multiple annotations files)"
    fast_a: "An additional indexable fasta file specifying insertion sequences (eg mobile element  sequences)"
    min_mapq: "minimum mapping quality for reads (default: 0)"
    pair_min_mapq: "include only read pairs where at least one read end both exceeds PAIR_MAPQ and  falls near the variant being analyzed (default: 0)"
    max_multi_mapping_similarity: "maximum ratio between best and second-best alignment scores within visualization  region in order to retain read (default: 0.95)"
    aln_quality: "minimum score of the Smith-Waterman alignment against the ref or alt allele in order to be  considered (multiplied by 2)"
    aln_score_delta: "minimum difference in scores between ref alignment score and alt alignment score  to be assigned to one allele (use an integer to specify a hard score difference  threshold, or a float to specify a score difference relative to the read size;  default: 2)"
    include_supplementary: "include supplementary alignments (ie, those with the 0x800 bit set in the bam flags);  default: false"
    fast: "implements some optimizations designed to find exact sequence matches quickly; will substantially increase speed on Illumina data but may result in some inexact results; default: false"
    sample_reads: "use at most this many reads (pairs), sampling randomly if need be, useful  when running in batch mode (default: use all reads)"
    max_reads: "maximum number of reads allowed, totaled across all samples, useful when running in batch  mode (default: unlimited)"
    max_size: "maximum event size allowed, totaled across all chromosome parts in bp; if either the ref  allele or alt allele exceeds this size, it will be skipped (default: unlimited)"
    max_deletion_size: "deletion size above which the deletion is analyzed in breakend mode (default: don't  convert to breakend mode)"
    port: "define a port to use for the web browser (default: random port)"
    processes: "how many processes to use for read realignment (default: use all available cores)"
    no_web: "don't show the web interface"
    save_reads: "save relevant reads to this file (bam)"
    verbose: "how verbose the progress and logging should be"
    export: "export view to file; in single variant-mode, the exported file format is determined from  the filename extension unless --format is specified; in batch mode, this should be the name  of a directory into which to save the files (use --format to set format); setting --export  automatically sets --no-web"
    format: "file export format, either svg, png or  pdf; by default, this is pdf (batch mode) or automatically identified from the file  extension of --export"
    open_exported: "automatically open the exported file"
    converter: "which program should be used to convert the output into PDF or PNG; choose from [webkitToPDF,  librsvg, inkscape] (default: auto)"
    thicker_lines: "Reads are shown with thicker lines, potentially overlapping one another, but increasing  contrast when zoomed out"
    context: "Number of additional nucleotides of genomic context to either side of the visualization  (useful for showing nearby annotations)"
    flanks: "Show reads in regions flanking the structural variant; these reads do not  contribute to the ref or alt allele read counts (default: false)"
    skip_cigar: "Don't color mismatches, insertions and deletions"
    dot_plots: "generate dotplots to show sequence homology within the aligned region; requires some  additional optional python libraries (scipy and PIL) and may take several minutes for  longer variants"
    export_insert_sizes: "plot the insert size distributions for each sample, for each event"
    summary: "save summary statistics to this (tab-delimited) file"
    lenient: "lowers the minimum alignment quality, showing reads even when breakpoints are only  approximately correct, or reads of lower quality (eg PacBio); and requires a larger  difference in alignment scores in order to assign a read to an allele"
    ref: "reference fasta file (a .faidx index file will be created if it doesn't exist so you need  write permissions for this directory)"
    breakpoints: "information about the breakpoint to be analyzed; see below for information"
  }
}