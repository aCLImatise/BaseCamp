#!/usr/bin/env cwl-runner

baseCommand:
- svviz
class: CommandLineTool
cwlVersion: v1.0
id: svviz
inputs:
- doc: reference fasta file (a .faidx index file will be created if it doesn't exist
    so you need  write permissions for this directory)
  id: ref
  inputBinding:
    position: 0
  type: string
- doc: information about the breakpoint to be analyzed; see below for information
  id: breakpoints
  inputBinding:
    position: 1
  type: string
- doc: sorted, indexed bam file containing reads of interest to plot; can be specified
    multiple  times to load multiple samples
  id: bam
  inputBinding:
    prefix: --bam
  type: string
- doc: 'event type: either del[etion], ins[ertion], inv[ersion], mei (mobile element
    insertion),  tra[nslocation], largedeletion (ldel), breakend (bkend) or batch
    (for reading variants   from a VCF file in batch mode)'
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: bed or gtf file containing annotations to plot; will be compressed and indexed
    using  samtools tabix in place if needed (can specify multiple annotations files)
  id: annotations
  inputBinding:
    prefix: --annotations
  type: string
- doc: An additional indexable fasta file specifying insertion sequences (eg mobile
    element  sequences)
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: 'minimum mapping quality for reads (default: 0)'
  id: min_mapq
  inputBinding:
    prefix: --min-mapq
  type: string
- doc: 'include only read pairs where at least one read end both exceeds PAIR_MAPQ
    and  falls near the variant being analyzed (default: 0)'
  id: pair_min_mapq
  inputBinding:
    prefix: --pair-min-mapq
  type: string
- doc: 'maximum ratio between best and second-best alignment scores within visualization  region
    in order to retain read (default: 0.95)'
  id: max_multi_mapping_similarity
  inputBinding:
    prefix: --max-multimapping-similarity
  type: long
- doc: minimum score of the Smith-Waterman alignment against the ref or alt allele
    in order to be  considered (multiplied by 2)
  id: aln_quality
  inputBinding:
    prefix: --aln-quality
  type: string
- doc: 'minimum difference in scores between ref alignment score and alt alignment
    score  to be assigned to one allele (use an integer to specify a hard score difference  threshold,
    or a float to specify a score difference relative to the read size;  default:
    2)'
  id: aln_score_delta
  inputBinding:
    prefix: --aln-score-delta
  type: string
- doc: 'include supplementary alignments (ie, those with the 0x800 bit set in the
    bam flags);  default: false'
  id: include_supplementary
  inputBinding:
    prefix: --include-supplementary
  type: boolean
- doc: 'implements some optimizations designed to find exact sequence matches quickly;
    will substantially increase speed on Illumina data but may result in some inexact
    results; default: false'
  id: fast
  inputBinding:
    prefix: --fast
  type: boolean
- doc: 'use at most this many reads (pairs), sampling randomly if need be, useful  when
    running in batch mode (default: use all reads)'
  id: sample_reads
  inputBinding:
    prefix: --sample-reads
  type: string
- doc: 'maximum number of reads allowed, totaled across all samples, useful when running
    in batch  mode (default: unlimited)'
  id: max_reads
  inputBinding:
    prefix: --max-reads
  type: long
- doc: 'maximum event size allowed, totaled across all chromosome parts in bp; if
    either the ref  allele or alt allele exceeds this size, it will be skipped (default:
    unlimited)'
  id: max_size
  inputBinding:
    prefix: --max-size
  type: long
- doc: "deletion size above which the deletion is analyzed in breakend mode (default:\
    \ don't  convert to breakend mode)"
  id: max_deletion_size
  inputBinding:
    prefix: --max-deletion-size
  type: long
- doc: 'define a port to use for the web browser (default: random port)'
  id: port
  inputBinding:
    prefix: --port
  type: string
- doc: 'how many processes to use for read realignment (default: use all available
    cores)'
  id: processes
  inputBinding:
    prefix: --processes
  type: string
- doc: don't show the web interface
  id: no_web
  inputBinding:
    prefix: --no-web
  type: boolean
- doc: save relevant reads to this file (bam)
  id: save_reads
  inputBinding:
    prefix: --save-reads
  type: string
- doc: how verbose the progress and logging should be
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: export view to file; in single variant-mode, the exported file format is determined
    from  the filename extension unless --format is specified; in batch mode, this
    should be the name  of a directory into which to save the files (use --format
    to set format); setting --export  automatically sets --no-web
  id: export
  inputBinding:
    prefix: --export
  type: string
- doc: file export format, either svg, png or  pdf; by default, this is pdf (batch
    mode) or automatically identified from the file  extension of --export
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: automatically open the exported file
  id: open_exported
  inputBinding:
    prefix: --open-exported
  type: boolean
- doc: 'which program should be used to convert the output into PDF or PNG; choose
    from [webkitToPDF,  librsvg, inkscape] (default: auto)'
  id: converter
  inputBinding:
    prefix: --converter
  type: string
- doc: Reads are shown with thicker lines, potentially overlapping one another, but
    increasing  contrast when zoomed out
  id: thicker_lines
  inputBinding:
    prefix: --thicker-lines
  type: boolean
- doc: Number of additional nucleotides of genomic context to either side of the visualization  (useful
    for showing nearby annotations)
  id: context
  inputBinding:
    prefix: --context
  type: string
- doc: 'Show reads in regions flanking the structural variant; these reads do not  contribute
    to the ref or alt allele read counts (default: false)'
  id: flanks
  inputBinding:
    prefix: --flanks
  type: boolean
- doc: Don't color mismatches, insertions and deletions
  id: skip_cigar
  inputBinding:
    prefix: --skip-cigar
  type: boolean
- doc: generate dotplots to show sequence homology within the aligned region; requires
    some  additional optional python libraries (scipy and PIL) and may take several
    minutes for  longer variants
  id: dot_plots
  inputBinding:
    prefix: --dotplots
  type: boolean
- doc: plot the insert size distributions for each sample, for each event
  id: export_insert_sizes
  inputBinding:
    prefix: --export-insert-sizes
  type: boolean
- doc: save summary statistics to this (tab-delimited) file
  id: summary
  inputBinding:
    prefix: --summary
  type: string
- doc: lowers the minimum alignment quality, showing reads even when breakpoints are
    only  approximately correct, or reads of lower quality (eg PacBio); and requires
    a larger  difference in alignment scores in order to assign a read to an allele
  id: lenient
  inputBinding:
    prefix: --lenient
  type: boolean
