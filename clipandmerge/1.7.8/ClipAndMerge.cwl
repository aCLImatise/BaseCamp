class: CommandLineTool
id: ../../../ClipAndMerge.cwl
inputs:
- id: discard_bad_reads
  doc: ': Discard reads after merging that do not fulfill the quality criteria. (default:
    false)'
  type: boolean
  inputBinding:
    prefix: -discardBadReads
- id: error_rate_merging
  doc: ': Error rate for merging forward and reverse reads. A value of 0.05 means
    that 5% mismatches are allowed in the overlap region. (default: 0.05)'
  type: string
  inputBinding:
    prefix: -e
- id: forward_reads_agatcggaagagcacacgtctgaactccagtcac
  doc: ': Forward reads adapter sequence. (default: AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC)'
  type: string
  inputBinding:
    prefix: -f
- id: in_one
  doc: '[]                       : Forward reads input file(s) in fastq(.gz) file
    format.'
  type: string
  inputBinding:
    prefix: -in1
- id: in_two
  doc: '[]                       : Reverse reads input file(s) in fastq(.gz) file
    format.'
  type: string
  inputBinding:
    prefix: -in2
- id: discard_sequences_shorter
  doc: ': Discard sequences shorter than this number of nucleotides after adapter
    clipping. (default: 25)'
  type: long
  inputBinding:
    prefix: -l
- id: last_base
  doc: ": Reads are trimmed from the 3' end until given value is reached. Trimming\
    \ is not performed if read is already <= given value. If this option is given\
    \ the '-trim3p' option is disregarded! Given value sould be 1-based! (default:\
    \ 2147483647)"
  type: long
  inputBinding:
    prefix: -lastBase
- id: log
  doc: ': Write log messages to a file instead of the standard error stream.'
  type: string
  inputBinding:
    prefix: -log
- id: require_minimum_length
  doc: ': Require a minimum adapter alignment length. If less nucleotides align with
    the adapter, the sequences are not clipped. (default: 8)'
  type: long
  inputBinding:
    prefix: -m
- id: max_parallel_reads
  doc: ': Maximal number of reads, that can be processed in parallel. This number
    largely depends on the processing system settings! Only change it if you know
    what you are doing! (default: 1000)'
  type: string
  inputBinding:
    prefix: -maxParallelReads
- id: min_qual_bad_reads
  doc: ': Minimal base quality for keeping bad reads. If 0 is specified, then all
    reads are kept. (default: 0)'
  type: long
  inputBinding:
    prefix: -minQualBadReads
- id: discard_sequences_unknown
  doc: ': Discard sequences with unknown (N) nucleotides. Default is to keep such
    sequences. (default: false)'
  type: boolean
  inputBinding:
    prefix: -n
- id: no_clip_stats
  doc: ': Disable the display of clipping statistics. (default: false)'
  type: boolean
  inputBinding:
    prefix: -no_clip_stats
- id: no_clipping
  doc: ': Skip adapter clipping. Only read merging is performed! (This is only recommended
    if every forward and reverse read has a corresponding partner in the other respective
    fastq-file! Otherwise merging can not be performed correctly. (default: false)'
  type: boolean
  inputBinding:
    prefix: -no_clipping
- id: no_merging
  doc: ': Skip read merging for paired-end sequencing data! Only adapter clipping
    is performed. This parameter is not needed for single-end data. (default: false)'
  type: boolean
  inputBinding:
    prefix: -no_merging
- id: no_qb_mm
  doc: ': Do not perform quality based mismatch calculation for merging. Default is
    to take quality scores into account. (default: false)'
  type: boolean
  inputBinding:
    prefix: -no_qbMM
- id: output_file_file
  doc: ": Output file. If no file is provided, output will be written to System.out.\
    \ If file ends with '.gz', output will be gzipped."
  type: string
  inputBinding:
    prefix: -o
- id: minimal_number_nucleotides
  doc: ': Minimal number of nucleotides that have to overlap in order to merge the
    forward and reverse read. (default: 10)'
  type: long
  inputBinding:
    prefix: -p
- id: minimum_base_quality
  doc: ': Minimum base quality for quality trimming. (default: 20)'
  type: long
  inputBinding:
    prefix: -q
- id: qo
  doc: ': Phred Score offset. (default: 33)'
  type: long
  inputBinding:
    prefix: -qo
- id: qt
  doc: ': Enable quality trimming for non-merged reads. (default: true)'
  type: boolean
  inputBinding:
    prefix: -qt
- id: qual_freq_bad_reads
  doc: ': Percentage of reads that have to fulfill minimal base quality criterion.
    (default: 0.9)'
  type: string
  inputBinding:
    prefix: -qualFreqBadReads
- id: reverse_reads_agatcggaagagcgtcgtgtagggaaagagtgta
  doc: ': Reverse reads adapter sequence. (default: AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTA)'
  type: string
  inputBinding:
    prefix: -r
- id: rm_no_partner
  doc: ': Remove reads with no pairing partner after adapter clipping. (default: false)'
  type: boolean
  inputBinding:
    prefix: -rm_no_partner
- id: time_estimation
  doc: ': Perform remaining time estimation. Note: this can take long for large gzipped
    input files. (default: false)'
  type: boolean
  inputBinding:
    prefix: -timeEstimation
- id: trim_three_p
  doc: ": Trim N nucleotides from the 3' end of each read. This step is performed\
    \ after adapter clipping. Reverse reads are not reverse trancriped before trimming.\
    \ (default: 0)"
  type: long
  inputBinding:
    prefix: -trim3p
- id: trim_five_p
  doc: ": Trim N nucleotides from the 5' end of each read. This step is performed\
    \ after adapter clipping. Reverse reads are not reverse transcriped before trimming.\
    \ (default: 0)"
  type: long
  inputBinding:
    prefix: -trim5p
- id: reversefile_write_unmerged
  doc: "REVERSE_FILE        : Write unmerged forward and reverse reads to extra files.\
    \ Unmerged forward reads are written to the file 'FORWARD_FILE'. Unmerged reverse\
    \ reads are written to the file 'REVERSE_FILE', i.e. the regular output file then\
    \ only contains merged reads! Attention: If the option '-rm_no_partner' is not\
    \ selected the two given output files also contain forward/reverse reads with\
    \ no pairing partner! If filenames end with '.gz' gzipped output is produced!"
  type: string
  inputBinding:
    prefix: -u
- id: verbose
  doc: ': Print additional processing information (default: false)'
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ClipAndMerge
