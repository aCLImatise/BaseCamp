class: CommandLineTool
id: svviz.cwl
inputs:
- id: in_bam
  doc: "sorted, indexed bam file containing reads of interest to plot; can be specified\
    \ multiple\ntimes to load multiple samples"
  type: File?
  inputBinding:
    prefix: --bam
- id: in_type
  doc: "event type: either del[etion], ins[ertion], inv[ersion], mei (mobile element\
    \ insertion),\ntra[nslocation], largedeletion (ldel), breakend (bkend) or batch\
    \ (for reading variants\nfrom a VCF file in batch mode)"
  type: File?
  inputBinding:
    prefix: --type
- id: in_annotations
  doc: "bed or gtf file containing annotations to plot; will be compressed and indexed\
    \ using\nsamtools tabix in place if needed (can specify multiple annotations files)"
  type: File?
  inputBinding:
    prefix: --annotations
- id: in_fast_a
  doc: "An additional indexable fasta file specifying insertion sequences (eg mobile\
    \ element\nsequences)"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_min_mapq
  doc: 'minimum mapping quality for reads (default: 0)'
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_pair_min_mapq
  doc: "include only read pairs where at least one read end both exceeds PAIR_MAPQ\
    \ and\nfalls near the variant being analyzed (default: 0)"
  type: long?
  inputBinding:
    prefix: --pair-min-mapq
- id: in_max_multi_mapping_similarity
  doc: "maximum ratio between best and second-best alignment scores within visualization\n\
    region in order to retain read (default: 0.95)"
  type: long?
  inputBinding:
    prefix: --max-multimapping-similarity
- id: in_aln_quality
  doc: "minimum score of the Smith-Waterman alignment against the ref or alt allele\
    \ in order to be\nconsidered (multiplied by 2)"
  type: long?
  inputBinding:
    prefix: --aln-quality
- id: in_aln_score_delta
  doc: "minimum difference in scores between ref alignment score and alt alignment\
    \ score\nto be assigned to one allele (use an integer to specify a hard score\
    \ difference\nthreshold, or a float to specify a score difference relative to\
    \ the read size;\ndefault: 2)"
  type: double?
  inputBinding:
    prefix: --aln-score-delta
- id: in_include_supplementary
  doc: "include supplementary alignments (ie, those with the 0x800 bit set in the\
    \ bam flags);\ndefault: false"
  type: boolean?
  inputBinding:
    prefix: --include-supplementary
- id: in_fast
  doc: "implements some optimizations designed to find exact sequence matches quickly;\n\
    will substantially increase speed on Illumina data but may result in some inexact\n\
    results; default: false"
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_sample_reads
  doc: "use at most this many reads (pairs), sampling randomly if need be, useful\n\
    when running in batch mode (default: use all reads)"
  type: string?
  inputBinding:
    prefix: --sample-reads
- id: in_max_reads
  doc: "maximum number of reads allowed, totaled across all samples, useful when running\
    \ in batch\nmode (default: unlimited)"
  type: long?
  inputBinding:
    prefix: --max-reads
- id: in_max_size
  doc: "maximum event size allowed, totaled across all chromosome parts in bp; if\
    \ either the ref\nallele or alt allele exceeds this size, it will be skipped (default:\
    \ unlimited)"
  type: long?
  inputBinding:
    prefix: --max-size
- id: in_max_deletion_size
  doc: "deletion size above which the deletion is analyzed in breakend mode (default:\
    \ don't\nconvert to breakend mode)"
  type: long?
  inputBinding:
    prefix: --max-deletion-size
- id: in_port
  doc: 'define a port to use for the web browser (default: random port)'
  type: string?
  inputBinding:
    prefix: --port
- id: in_processes
  doc: 'how many processes to use for read realignment (default: use all available
    cores)'
  type: string?
  inputBinding:
    prefix: --processes
- id: in_no_web
  doc: don't show the web interface
  type: boolean?
  inputBinding:
    prefix: --no-web
- id: in_save_reads
  doc: save relevant reads to this file (bam)
  type: File?
  inputBinding:
    prefix: --save-reads
- id: in_verbose
  doc: how verbose the progress and logging should be
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_export
  doc: "export view to file; in single variant-mode, the exported file format is determined\
    \ from\nthe filename extension unless --format is specified; in batch mode, this\
    \ should be the name\nof a directory into which to save the files (use --format\
    \ to set format); setting --export\nautomatically sets --no-web"
  type: File?
  inputBinding:
    prefix: --export
- id: in_format
  doc: "file export format, either svg, png or\npdf; by default, this is pdf (batch\
    \ mode) or automatically identified from the file\nextension of --export"
  type: File?
  inputBinding:
    prefix: --format
- id: in_open_exported
  doc: automatically open the exported file
  type: boolean?
  inputBinding:
    prefix: --open-exported
- id: in_converter
  doc: "which program should be used to convert the output into PDF or PNG; choose\
    \ from [webkitToPDF,\nlibrsvg, inkscape] (default: auto)"
  type: string?
  inputBinding:
    prefix: --converter
- id: in_thicker_lines
  doc: "Reads are shown with thicker lines, potentially overlapping one another, but\
    \ increasing\ncontrast when zoomed out"
  type: boolean?
  inputBinding:
    prefix: --thicker-lines
- id: in_context
  doc: "Number of additional nucleotides of genomic context to either side of the\
    \ visualization\n(useful for showing nearby annotations)"
  type: long?
  inputBinding:
    prefix: --context
- id: in_flanks
  doc: "Show reads in regions flanking the structural variant; these reads do not\n\
    contribute to the ref or alt allele read counts (default: false)"
  type: boolean?
  inputBinding:
    prefix: --flanks
- id: in_skip_cigar
  doc: Don't color mismatches, insertions and deletions
  type: boolean?
  inputBinding:
    prefix: --skip-cigar
- id: in_dot_plots
  doc: "generate dotplots to show sequence homology within the aligned region; requires\
    \ some\nadditional optional python libraries (scipy and PIL) and may take several\
    \ minutes for\nlonger variants"
  type: boolean?
  inputBinding:
    prefix: --dotplots
- id: in_export_insert_sizes
  doc: plot the insert size distributions for each sample, for each event
  type: boolean?
  inputBinding:
    prefix: --export-insert-sizes
- id: in_summary
  doc: save summary statistics to this (tab-delimited) file
  type: File?
  inputBinding:
    prefix: --summary
- id: in_lenient
  doc: "lowers the minimum alignment quality, showing reads even when breakpoints\
    \ are only\napproximately correct, or reads of lower quality (eg PacBio); and\
    \ requires a larger\ndifference in alignment scores in order to assign a read\
    \ to an allele"
  type: boolean?
  inputBinding:
    prefix: --lenient
- id: in_ref
  doc: "reference fasta file (a .faidx index file will be created if it doesn't exist\
    \ so you need \nwrite permissions for this directory)"
  type: string
  inputBinding:
    position: 0
- id: in_breakpoints
  doc: information about the breakpoint to be analyzed; see below for information
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_reads
  doc: save relevant reads to this file (bam)
  type: File?
  outputBinding:
    glob: $(inputs.in_save_reads)
hints: []
cwlVersion: v1.1
baseCommand:
- svviz
