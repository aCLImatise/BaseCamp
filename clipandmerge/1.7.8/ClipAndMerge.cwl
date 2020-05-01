#!/usr/bin/env cwl-runner

baseCommand:
- ClipAndMerge
class: CommandLineTool
cwlVersion: v1.0
id: clipandmerge
inputs:
- doc: ': Discard reads after merging that do not fulfill the quality criteria. (default:
    false)'
  id: discard_bad_reads
  inputBinding:
    prefix: -discardBadReads
  type: boolean
- doc: ': Error rate for merging forward and reverse reads. A value of 0.05 means
    that 5% mismatches are allowed in the overlap region. (default: 0.05)'
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: ': Forward reads adapter sequence. (default: AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC)'
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: '[]                       : Forward reads input file(s) in fastq(.gz) file
    format.'
  id: in1
  inputBinding:
    prefix: -in1
  type: string
- doc: '[]                       : Reverse reads input file(s) in fastq(.gz) file
    format.'
  id: in2
  inputBinding:
    prefix: -in2
  type: string
- doc: ': Discard sequences shorter than this number of nucleotides after adapter
    clipping. (default: 25)'
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: ": Reads are trimmed from the 3' end until given value is reached. Trimming\
    \ is not performed if read is already <= given value. If this option is given\
    \ the '-trim3p' option is disregarded! Given value sould be 1-based! (default:\
    \ 2147483647)"
  id: last_base
  inputBinding:
    prefix: -lastBase
  type: long
- doc: ': Write log messages to a file instead of the standard error stream.'
  id: log
  inputBinding:
    prefix: -log
  type: string
- doc: ': Require a minimum adapter alignment length. If less nucleotides align with
    the adapter, the sequences are not clipped. (default: 8)'
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: ': Maximal number of reads, that can be processed in parallel. This number
    largely depends on the processing system settings! Only change it if you know
    what you are doing! (default: 1000)'
  id: max_parallel_reads
  inputBinding:
    prefix: -maxParallelReads
  type: string
- doc: ': Minimal base quality for keeping bad reads. If 0 is specified, then all
    reads are kept. (default: 0)'
  id: min_qual_bad_reads
  inputBinding:
    prefix: -minQualBadReads
  type: long
- doc: ': Discard sequences with unknown (N) nucleotides. Default is to keep such
    sequences. (default: false)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: ': Disable the display of clipping statistics. (default: false)'
  id: no_clip_stats
  inputBinding:
    prefix: -no_clip_stats
  type: boolean
- doc: ': Skip adapter clipping. Only read merging is performed! (This is only recommended
    if every forward and reverse read has a corresponding partner in the other respective
    fastq-file! Otherwise merging can not be performed correctly. (default: false)'
  id: no_clipping
  inputBinding:
    prefix: -no_clipping
  type: boolean
- doc: ': Skip read merging for paired-end sequencing data! Only adapter clipping
    is performed. This parameter is not needed for single-end data. (default: false)'
  id: no_merging
  inputBinding:
    prefix: -no_merging
  type: boolean
- doc: ': Do not perform quality based mismatch calculation for merging. Default is
    to take quality scores into account. (default: false)'
  id: no_qb_mm
  inputBinding:
    prefix: -no_qbMM
  type: boolean
- doc: ": Output file. If no file is provided, output will be written to System.out.\
    \ If file ends with '.gz', output will be gzipped."
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': Minimal number of nucleotides that have to overlap in order to merge the
    forward and reverse read. (default: 10)'
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: ': Minimum base quality for quality trimming. (default: 20)'
  id: q
  inputBinding:
    prefix: -q
  type: long
- doc: ': Phred Score offset. (default: 33)'
  id: qo
  inputBinding:
    prefix: -qo
  type: long
- doc: ': Enable quality trimming for non-merged reads. (default: true)'
  id: qt
  inputBinding:
    prefix: -qt
  type: boolean
- doc: ': Percentage of reads that have to fulfill minimal base quality criterion.
    (default: 0.9)'
  id: qual_freq_bad_reads
  inputBinding:
    prefix: -qualFreqBadReads
  type: string
- doc: ': Reverse reads adapter sequence. (default: AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTA)'
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: ': Remove reads with no pairing partner after adapter clipping. (default: false)'
  id: rm_no_partner
  inputBinding:
    prefix: -rm_no_partner
  type: boolean
- doc: ': Perform remaining time estimation. Note: this can take long for large gzipped
    input files. (default: false)'
  id: time_estimation
  inputBinding:
    prefix: -timeEstimation
  type: boolean
- doc: ": Trim N nucleotides from the 3' end of each read. This step is performed\
    \ after adapter clipping. Reverse reads are not reverse trancriped before trimming.\
    \ (default: 0)"
  id: trim3p
  inputBinding:
    prefix: -trim3p
  type: long
- doc: ": Trim N nucleotides from the 5' end of each read. This step is performed\
    \ after adapter clipping. Reverse reads are not reverse transcriped before trimming.\
    \ (default: 0)"
  id: trim5p
  inputBinding:
    prefix: -trim5p
  type: long
- doc: "REVERSE_FILE        : Write unmerged forward and reverse reads to extra files.\
    \ Unmerged forward reads are written to the file 'FORWARD_FILE'. Unmerged reverse\
    \ reads are written to the file 'REVERSE_FILE', i.e. the regular output file then\
    \ only contains merged reads! Attention: If the option '-rm_no_partner' is not\
    \ selected the two given output files also contain forward/reverse reads with\
    \ no pairing partner! If filenames end with '.gz' gzipped output is produced!"
  id: u
  inputBinding:
    prefix: -u
  type: string
- doc: ': Print additional processing information (default: false)'
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
