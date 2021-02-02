class: CommandLineTool
id: ClipAndMerge.cwl
inputs:
- id: in_discard_bad_reads
  doc: ": Discard reads after merging that do not fulfill the quality criteria. (default:\n\
    false)"
  type: boolean
  inputBinding:
    prefix: -discardBadReads
- id: in_error_rate_merging
  doc: ": Error rate for merging forward and reverse reads. A value of 0.05 means\
    \ that 5%\nmismatches are allowed in the overlap region. (default: 0.05)"
  type: double
  inputBinding:
    prefix: -e
- id: in_forward_reads_agatcggaagagcacacgtctgaactccagtcac
  doc: ': Forward reads adapter sequence. (default: AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC)'
  type: string
  inputBinding:
    prefix: -f
- id: in_in_one
  doc: '[]                       : Forward reads input file(s) in fastq(.gz) file
    format.'
  type: long
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: '[]                       : Reverse reads input file(s) in fastq(.gz) file
    format.'
  type: long
  inputBinding:
    prefix: -in2
- id: in_discard_sequences_shorter
  doc: ": Discard sequences shorter than this number of nucleotides after adapter\n\
    clipping. (default: 25)"
  type: long
  inputBinding:
    prefix: -l
- id: in_last_base
  doc: ": Reads are trimmed from the 3' end until given value is reached. Trimming\
    \ is not\nperformed if read is already <= given value. If this option is given\
    \ the\n'-trim3p' option is disregarded! Given value sould be 1-based! (default:\n\
    2147483647)"
  type: long
  inputBinding:
    prefix: -lastBase
- id: in_log
  doc: ': Write log messages to a file instead of the standard error stream.'
  type: File
  inputBinding:
    prefix: -log
- id: in_require_alignment_length
  doc: ": Require a minimum adapter alignment length. If less nucleotides align with\
    \ the\nadapter, the sequences are not clipped. (default: 8)"
  type: long
  inputBinding:
    prefix: -m
- id: in_max_parallel_reads
  doc: ": Maximal number of reads, that can be processed in parallel. This number\
    \ largely\ndepends on the processing system settings! Only change it if you know\
    \ what you\nare doing! (default: 1000)"
  type: long
  inputBinding:
    prefix: -maxParallelReads
- id: in_min_qual_bad_reads
  doc: ": Minimal base quality for keeping bad reads. If 0 is specified, then all\
    \ reads\nare kept. (default: 0)"
  type: long
  inputBinding:
    prefix: -minQualBadReads
- id: in_discard_sequences_unknown
  doc: ": Discard sequences with unknown (N) nucleotides. Default is to keep such\n\
    sequences. (default: false)"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_no_clip_stats
  doc: ': Disable the display of clipping statistics. (default: false)'
  type: boolean
  inputBinding:
    prefix: -no_clip_stats
- id: in_no_clipping
  doc: ": Skip adapter clipping. Only read merging is performed! (This is only recommended\n\
    if every forward and reverse read has a corresponding partner in the other\nrespective\
    \ fastq-file! Otherwise merging can not be performed correctly.\n(default: false)"
  type: boolean
  inputBinding:
    prefix: -no_clipping
- id: in_no_merging
  doc: ": Skip read merging for paired-end sequencing data! Only adapter clipping\
    \ is\nperformed. This parameter is not needed for single-end data. (default: false)"
  type: boolean
  inputBinding:
    prefix: -no_merging
- id: in_no_qb_mm
  doc: ": Do not perform quality based mismatch calculation for merging. Default is\
    \ to\ntake quality scores into account. (default: false)"
  type: boolean
  inputBinding:
    prefix: -no_qbMM
- id: in_output_file_file
  doc: ": Output file. If no file is provided, output will be written to System.out.\
    \ If\nfile ends with '.gz', output will be gzipped."
  type: File
  inputBinding:
    prefix: -o
- id: in_minimal_number_nucleotides
  doc: ": Minimal number of nucleotides that have to overlap in order to merge the\
    \ forward\nand reverse read. (default: 10)"
  type: long
  inputBinding:
    prefix: -p
- id: in_minimum_base_quality
  doc: ': Minimum base quality for quality trimming. (default: 20)'
  type: long
  inputBinding:
    prefix: -q
- id: in_qo
  doc: ': Phred Score offset. (default: 33)'
  type: long
  inputBinding:
    prefix: -qo
- id: in_qt
  doc: ': Enable quality trimming for non-merged reads. (default: true)'
  type: boolean
  inputBinding:
    prefix: -qt
- id: in_qual_freq_bad_reads
  doc: ": Percentage of reads that have to fulfill minimal base quality criterion.\n\
    (default: 0.9)"
  type: double
  inputBinding:
    prefix: -qualFreqBadReads
- id: in_reverse_reads_agatcggaagagcgtcgtgtagggaaagagtgta
  doc: ': Reverse reads adapter sequence. (default: AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTA)'
  type: string
  inputBinding:
    prefix: -r
- id: in_rm_no_partner
  doc: ': Remove reads with no pairing partner after adapter clipping. (default: false)'
  type: boolean
  inputBinding:
    prefix: -rm_no_partner
- id: in_time_estimation
  doc: ": Perform remaining time estimation. Note: this can take long for large gzipped\n\
    input files. (default: false)"
  type: boolean
  inputBinding:
    prefix: -timeEstimation
- id: in_trim_three_p
  doc: ": Trim N nucleotides from the 3' end of each read. This step is performed\
    \ after\nadapter clipping. Reverse reads are not reverse trancriped before trimming.\n\
    (default: 0)"
  type: long
  inputBinding:
    prefix: -trim3p
- id: in_trim_five_p
  doc: ": Trim N nucleotides from the 5' end of each read. This step is performed\
    \ after\nadapter clipping. Reverse reads are not reverse transcriped before trimming.\n\
    (default: 0)"
  type: long
  inputBinding:
    prefix: -trim5p
- id: in_reversefile_write_unmerged
  doc: "REVERSE_FILE        : Write unmerged forward and reverse reads to extra files.\
    \ Unmerged forward reads\nare written to the file 'FORWARD_FILE'. Unmerged reverse\
    \ reads are written to\nthe file 'REVERSE_FILE', i.e. the regular output file\
    \ then only contains merged\nreads!\nAttention: If the option '-rm_no_partner'\
    \ is not selected the two given output\nfiles also contain forward/reverse reads\
    \ with no pairing partner!\nIf filenames end with '.gz' gzipped output is produced!"
  type: File
  inputBinding:
    prefix: -u
- id: in_verbose
  doc: ': Print additional processing information (default: false)'
  type: boolean
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_file
  doc: ": Output file. If no file is provided, output will be written to System.out.\
    \ If\nfile ends with '.gz', output will be gzipped."
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_file)
- id: out_reversefile_write_unmerged
  doc: "REVERSE_FILE        : Write unmerged forward and reverse reads to extra files.\
    \ Unmerged forward reads\nare written to the file 'FORWARD_FILE'. Unmerged reverse\
    \ reads are written to\nthe file 'REVERSE_FILE', i.e. the regular output file\
    \ then only contains merged\nreads!\nAttention: If the option '-rm_no_partner'\
    \ is not selected the two given output\nfiles also contain forward/reverse reads\
    \ with no pairing partner!\nIf filenames end with '.gz' gzipped output is produced!"
  type: File
  outputBinding:
    glob: $(inputs.in_reversefile_write_unmerged)
cwlVersion: v1.1
baseCommand:
- ClipAndMerge
