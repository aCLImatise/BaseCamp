class: CommandLineTool
id: svviz.cwl
inputs:
- id: ref
  doc: reference fasta file (a .faidx index file will be created if it doesn't exist
    so you need  write permissions for this directory)
  type: string
  inputBinding:
    position: 0
- id: breakpoints
  doc: information about the breakpoint to be analyzed; see below for information
  type: string
  inputBinding:
    position: 1
- id: bam
  doc: sorted, indexed bam file containing reads of interest to plot; can be specified
    multiple  times to load multiple samples
  type: string
  inputBinding:
    prefix: --bam
- id: type
  doc: 'event type: either del[etion], ins[ertion], inv[ersion], mei (mobile element
    insertion),  tra[nslocation], largedeletion (ldel), breakend (bkend) or batch
    (for reading variants   from a VCF file in batch mode)'
  type: string
  inputBinding:
    prefix: --type
- id: annotations
  doc: bed or gtf file containing annotations to plot; will be compressed and indexed
    using  samtools tabix in place if needed (can specify multiple annotations files)
  type: string
  inputBinding:
    prefix: --annotations
- id: fast_a
  doc: An additional indexable fasta file specifying insertion sequences (eg mobile
    element  sequences)
  type: string
  inputBinding:
    prefix: --fasta
- id: min_mapq
  doc: 'minimum mapping quality for reads (default: 0)'
  type: string
  inputBinding:
    prefix: --min-mapq
- id: pair_min_mapq
  doc: 'include only read pairs where at least one read end both exceeds PAIR_MAPQ
    and  falls near the variant being analyzed (default: 0)'
  type: string
  inputBinding:
    prefix: --pair-min-mapq
- id: max_multi_mapping_similarity
  doc: 'maximum ratio between best and second-best alignment scores within visualization  region
    in order to retain read (default: 0.95)'
  type: long
  inputBinding:
    prefix: --max-multimapping-similarity
- id: aln_quality
  doc: minimum score of the Smith-Waterman alignment against the ref or alt allele
    in order to be  considered (multiplied by 2)
  type: string
  inputBinding:
    prefix: --aln-quality
- id: aln_score_delta
  doc: 'minimum difference in scores between ref alignment score and alt alignment
    score  to be assigned to one allele (use an integer to specify a hard score difference  threshold,
    or a float to specify a score difference relative to the read size;  default:
    2)'
  type: string
  inputBinding:
    prefix: --aln-score-delta
- id: include_supplementary
  doc: 'include supplementary alignments (ie, those with the 0x800 bit set in the
    bam flags);  default: false'
  type: boolean
  inputBinding:
    prefix: --include-supplementary
- id: fast
  doc: 'implements some optimizations designed to find exact sequence matches quickly;
    will substantially increase speed on Illumina data but may result in some inexact
    results; default: false'
  type: boolean
  inputBinding:
    prefix: --fast
- id: sample_reads
  doc: 'use at most this many reads (pairs), sampling randomly if need be, useful  when
    running in batch mode (default: use all reads)'
  type: string
  inputBinding:
    prefix: --sample-reads
- id: max_reads
  doc: 'maximum number of reads allowed, totaled across all samples, useful when running
    in batch  mode (default: unlimited)'
  type: long
  inputBinding:
    prefix: --max-reads
- id: max_size
  doc: 'maximum event size allowed, totaled across all chromosome parts in bp; if
    either the ref  allele or alt allele exceeds this size, it will be skipped (default:
    unlimited)'
  type: long
  inputBinding:
    prefix: --max-size
- id: max_deletion_size
  doc: "deletion size above which the deletion is analyzed in breakend mode (default:\
    \ don't  convert to breakend mode)"
  type: long
  inputBinding:
    prefix: --max-deletion-size
- id: port
  doc: 'define a port to use for the web browser (default: random port)'
  type: string
  inputBinding:
    prefix: --port
- id: processes
  doc: 'how many processes to use for read realignment (default: use all available
    cores)'
  type: string
  inputBinding:
    prefix: --processes
- id: no_web
  doc: don't show the web interface
  type: boolean
  inputBinding:
    prefix: --no-web
- id: save_reads
  doc: save relevant reads to this file (bam)
  type: string
  inputBinding:
    prefix: --save-reads
- id: verbose
  doc: how verbose the progress and logging should be
  type: string
  inputBinding:
    prefix: --verbose
- id: export
  doc: export view to file; in single variant-mode, the exported file format is determined
    from  the filename extension unless --format is specified; in batch mode, this
    should be the name  of a directory into which to save the files (use --format
    to set format); setting --export  automatically sets --no-web
  type: string
  inputBinding:
    prefix: --export
- id: format
  doc: file export format, either svg, png or  pdf; by default, this is pdf (batch
    mode) or automatically identified from the file  extension of --export
  type: string
  inputBinding:
    prefix: --format
- id: open_exported
  doc: automatically open the exported file
  type: boolean
  inputBinding:
    prefix: --open-exported
- id: converter
  doc: 'which program should be used to convert the output into PDF or PNG; choose
    from [webkitToPDF,  librsvg, inkscape] (default: auto)'
  type: string
  inputBinding:
    prefix: --converter
- id: thicker_lines
  doc: Reads are shown with thicker lines, potentially overlapping one another, but
    increasing  contrast when zoomed out
  type: boolean
  inputBinding:
    prefix: --thicker-lines
- id: context
  doc: Number of additional nucleotides of genomic context to either side of the visualization  (useful
    for showing nearby annotations)
  type: string
  inputBinding:
    prefix: --context
- id: flanks
  doc: 'Show reads in regions flanking the structural variant; these reads do not  contribute
    to the ref or alt allele read counts (default: false)'
  type: boolean
  inputBinding:
    prefix: --flanks
- id: skip_cigar
  doc: Don't color mismatches, insertions and deletions
  type: boolean
  inputBinding:
    prefix: --skip-cigar
- id: dot_plots
  doc: generate dotplots to show sequence homology within the aligned region; requires
    some  additional optional python libraries (scipy and PIL) and may take several
    minutes for  longer variants
  type: boolean
  inputBinding:
    prefix: --dotplots
- id: export_insert_sizes
  doc: plot the insert size distributions for each sample, for each event
  type: boolean
  inputBinding:
    prefix: --export-insert-sizes
- id: summary
  doc: save summary statistics to this (tab-delimited) file
  type: string
  inputBinding:
    prefix: --summary
- id: lenient
  doc: lowers the minimum alignment quality, showing reads even when breakpoints are
    only  approximately correct, or reads of lower quality (eg PacBio); and requires
    a larger  difference in alignment scores in order to assign a read to an allele
  type: boolean
  inputBinding:
    prefix: --lenient
outputs: []
cwlVersion: v1.1
baseCommand:
- svviz
