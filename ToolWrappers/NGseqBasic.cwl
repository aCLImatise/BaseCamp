class: CommandLineTool
id: NGseqBasic.cwl
inputs:
- id: in_outfile
  doc: (the STDOUT log file name in your RUN COMMAND - see above )
  type: File
  inputBinding:
    prefix: --outfile
- id: in_errfile
  doc: (the STDERR log file name in your RUN COMMAND - see above )
  type: File
  inputBinding:
    prefix: --errfile
- id: in_orange_blue
  doc: (use orange-blue color scheme instead of red-green)
  type: boolean
  inputBinding:
    prefix: --orangeBlue
- id: in_gz
  doc: (input files are provided in file.fastq.gz compressed format )
  type: boolean
  inputBinding:
    prefix: --gz
- id: in_lanes
  doc: (set this to be the number of lanes, if there are more than 1 lanes in your
    fastq files)
  type: long
  inputBinding:
    prefix: --lanes
- id: in_single_end
  doc: '- to run single end sequencing files (default behavior is paired end files)'
  type: boolean
  inputBinding:
    prefix: --singleEnd
- id: in_how_many_processors
  doc: ': to how many processors we will parallelise the bowtie part of the run'
  type: long
  inputBinding:
    prefix: -p
- id: in_bowtie_one
  doc: / --bowtie2 (default is bowtie1 - decide if bowtie1 or bowtie2 is to be used.
    bowtie2 is better to long reads - read lenght more than 70b, fragment lenght more
    than 350b)
  type: boolean
  inputBinding:
    prefix: --bowtie1
- id: in_chunk_mb
  doc: '- memory allocated to Bowtie, defaults to 256mb - only affects bowtie1 run'
  type: long
  inputBinding:
    prefix: --chunkmb
- id: in_run_bowtie_parameter
  doc: run with bowtie parameter M=2 (if maps more than M times, report one alignment
    in random) - only affects bowtie1 run
  type: long
  inputBinding:
    prefix: -M
- id: in_max_ins
  doc: ': sets the TRUE fragment (max) lenght to 350bp. Bowtie1 default 250, bowtie2
    default 500, this script default 350. (Bowtie mappings resulting in fragments
    longer than --maxins are not reported)'
  type: long
  inputBinding:
    prefix: --maxins
- id: in_no_bowtie
  doc: only pipe AFTER bowtie (assumes PIPE_mappedBamPaths.txt, see above)
  type: string
  inputBinding:
    prefix: --noBowtie
- id: in_flash
  doc: "**/noFlash (run/do-not-run Flash - for unmapped reads 'try to merge overlapping\
    \ short reads to longer single end read' to enhance mapping)"
  type: boolean
  inputBinding:
    prefix: --flash
- id: in_blacklist_filter_slash_no_blacklist_filter
  doc: '- supported genomes mm9 mm10 hg18 hg19 (filter/do-not-filter blacklisted regions
    out from the final bam file)'
  type: File
  inputBinding:
    prefix: --blacklistFilter/noBlacklistFilter
- id: in_footprint
  doc: ': generate also footprint tracks (see footprint(FP) parameters below)'
  type: boolean
  inputBinding:
    prefix: --footPrint
- id: in_peak_call
  doc: ': generate also peak call (see peak call(P) parameters below)'
  type: boolean
  inputBinding:
    prefix: --peakCall
- id: in_next_era
  doc: ': use Nextera adaptors in trimming, instead of standard illumina PE adapters'
  type: boolean
  inputBinding:
    prefix: --nextera
- id: in_trim_slashnot_rim
  doc: "** (run/do-not-run TrimGalore for the data - Illumina PE standard adapter\
    \ filter, trims on 3' end)"
  type: boolean
  inputBinding:
    prefix: --trim/noTrim
- id: in_trim_five
  doc: (run trimming also for 5' end of the data - Illumina PE standard adapter filter,
    combination of TrimGalore and cutadapt)
  type: boolean
  inputBinding:
    prefix: --trim5
- id: in_ada_three_read_one
  doc: ": custom adapters 3' trimming, R1 and R2 (give both if PE custom trimming\
    \ is needed, SE trimming needs only R1) - these adapters will be used instead\
    \ of Illumina default / atac adapters. SEQUENCE has to be in CAPITAL letters ATCG"
  type: long
  inputBinding:
    prefix: --ada3read1
- id: in_ada_five_read_one
  doc: ": custom adapters 5' trimming, R1 and R2 (give both if PE custom trimming\
    \ is needed, SE trimming needs only R1) - these adapters will be used instead\
    \ of Illumina default / atac adapters. SEQUENCE has to be in CAPITAL letters ATCG"
  type: long
  inputBinding:
    prefix: --ada5read1
- id: in_no_window
  doc: ': no windowing - instead plot 1b resolution raw read depths'
  type: boolean
  inputBinding:
    prefix: --noWindow
- id: in_window_size
  doc: ": custom window size (instead of default 300b) - this value has to be even\
    \ number (or is rounded into one).\nIf no custom INCREMENT is given, increment\
    \ is set to 10% of windowSize , i.e. the windowSize value has to be divisible\
    \ by 10 (or will be rounded to behave as such)."
  type: long
  inputBinding:
    prefix: --windowSize
- id: in_window_incr
  doc: ": custom window increment (instead of default 10%). The value of windowIncr\
    \ should be even number, given in BASES (10 bases : windowIncr=10), not percentages.\n\
    If no custom windowSize is given, the windowSize will be set to 300bases, and\
    \ increment rounded so that 300bases is divisible by the given increment (allows\
    \ only values 10 and 30)."
  type: long
  inputBinding:
    prefix: --windowIncr
- id: in_save_unmapped
  doc: '(save fastq files UNMAPPED_1.fastq UNMAPPED_2.fastq for not-paired-mapped
    reads : only for PE data)'
  type: boolean
  inputBinding:
    prefix: --saveUnmapped
- id: in_save_unpaired
  doc: (save bam files singleEnd_bowtie_READ1.bam singleEnd_bowtie_READ2.bam for unpaired
    mapped reads - not blacklisted/duplicate-filtered)
  type: boolean
  inputBinding:
    prefix: --saveUnpaired
- id: in_save_unpaired_filtered
  doc: (save bam files singleEnd_bowtie_filtered_READ1.bam singleEnd_bowtie_filtered_READ1.bam
    for unpaired mapped reads - blacklisted/duplicate-filtered)
  type: boolean
  inputBinding:
    prefix: --saveUnpairedFiltered
- id: in_save_unfiltered
  doc: (save original bam file bowtie_out.bam - straight from bowtie output)
  type: File
  inputBinding:
    prefix: --saveUnfiltered
- id: in_save_unfiltered_mapped
  doc: (save original bam file mapped.bam - straight from bowtie output. Do not print
    out unmapped reads (single end) / non-proper pairs (paired end).)
  type: File
  inputBinding:
    prefix: --saveUnfilteredMapped
- id: in_save_untrimmed
  doc: (run EXTRA bowtie-run before trimming, save the bam file UNTRIMMED_bowtie_out.bam
    - straight from before-trimming bowtie output - includes all reads)
  type: File
  inputBinding:
    prefix: --saveUntrimmed
- id: in_save_untrimmed_mapped
  doc: (run EXTRA bowtie-run before trimming, save the bam file UNTRIMMED_onlyMapped_bowtie_out.bam
    - straight from before-trimming bowtie output. Do not print out unmapped reads
    (single end) / non-proper pairs (paired end).)
  type: File
  inputBinding:
    prefix: --saveUntrimmedMapped
- id: in_save_bdg
  doc: '(save unpacked BDG files - default : save only BIGWIG packed versions of these
    files'
  type: boolean
  inputBinding:
    prefix: --saveBDG
- id: in_pyramid_rerun
  doc: ': if you are running peak calls / footprints via PYRAMID pipeline, set this
    on.'
  type: boolean
  inputBinding:
    prefix: --pyramidRerun
- id: in_only_peak_call
  doc: ': only run Peak Call (to finetune peak call part) - expects PIPE_previousRunPaths.txt
    (see above)'
  type: boolean
  inputBinding:
    prefix: --onlyPeakCall
- id: in_only_fp_and_pc
  doc: ': only run Peak Call and FootPrinting (to finetune FootPrint windowing and
    peak call parameters) - expects PIPE_previousRunPaths.txt (see above)'
  type: boolean
  inputBinding:
    prefix: --onlyFPandPC
- id: in_only_hub
  doc: ": only generates data hub - NOTE !! this DOES NOT include data from any 'footprint\
    \ / peak call rerun' folders - it hubs only the ORIGINAL data set - (expects PIPE_previousRunPaths.txt,\
    \ see above)"
  type: boolean
  inputBinding:
    prefix: --onlyHub
- id: in_window_fp
  doc: ': (windowing the signal for visualisation) - sliding window, where overlap
    2*WINDOW, and window size 4*WINDOW, resulting in 2*WINDOW size increments in graph.
    Value 0 means NO WINDOWING (only raw 1b resolution track is given)'
  type: long
  inputBinding:
    prefix: --windowFP
- id: in_depth_p
  doc: ': (first filter)  RANGE of depthP - Each region should have at least 40 reads
    to be included to the peak call.'
  type: long
  inputBinding:
    prefix: --depthP
- id: in_merge_p
  doc: ': (second filter) Merges regions separated by 0bp or less.'
  type: long
  inputBinding:
    prefix: --mergeP
- id: in_contig_p
  doc: ': (third filter)  Regions (merged, depth-filtered) should be at least 20bp
    wide to be considered.'
  type: long
  inputBinding:
    prefix: --contigP
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_blacklist_filter_slash_no_blacklist_filter
  doc: '- supported genomes mm9 mm10 hg18 hg19 (filter/do-not-filter blacklisted regions
    out from the final bam file)'
  type: File
  outputBinding:
    glob: $(inputs.in_blacklist_filter_slash_no_blacklist_filter)
- id: out_save_unfiltered
  doc: (save original bam file bowtie_out.bam - straight from bowtie output)
  type: File
  outputBinding:
    glob: $(inputs.in_save_unfiltered)
- id: out_save_unfiltered_mapped
  doc: (save original bam file mapped.bam - straight from bowtie output. Do not print
    out unmapped reads (single end) / non-proper pairs (paired end).)
  type: File
  outputBinding:
    glob: $(inputs.in_save_unfiltered_mapped)
- id: out_save_untrimmed
  doc: (run EXTRA bowtie-run before trimming, save the bam file UNTRIMMED_bowtie_out.bam
    - straight from before-trimming bowtie output - includes all reads)
  type: File
  outputBinding:
    glob: $(inputs.in_save_untrimmed)
- id: out_save_untrimmed_mapped
  doc: (run EXTRA bowtie-run before trimming, save the bam file UNTRIMMED_onlyMapped_bowtie_out.bam
    - straight from before-trimming bowtie output. Do not print out unmapped reads
    (single end) / non-proper pairs (paired end).)
  type: File
  outputBinding:
    glob: $(inputs.in_save_untrimmed_mapped)
cwlVersion: v1.1
baseCommand:
- NGseqBasic
