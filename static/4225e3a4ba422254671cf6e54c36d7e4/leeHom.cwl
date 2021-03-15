class: CommandLineTool
id: leeHom.cwl
inputs:
- id: in_fq_one
  doc: First fastq
  type: boolean?
  inputBinding:
    prefix: -fq1
- id: in_fq_two
  doc: Second  fastq file (for paired-end)
  type: boolean?
  inputBinding:
    prefix: -fq2
- id: in_fq_o
  doc: Output fastq prefix
  type: boolean?
  inputBinding:
    prefix: -fqo
- id: in_outfile
  doc: Output (BAM format).
  type: boolean?
  inputBinding:
    prefix: --outfile
- id: in_produce_uncompressed_bam
  doc: Produce uncompressed bam (good for pipe)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_aligned
  doc: Allow reads to be aligned (default false)
  type: boolean?
  inputBinding:
    prefix: --aligned
- id: in_verbose
  doc: Turn all messages on (default false)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: '[log file]        Print a tally of merged reads to this log file (default
    only to stderr)'
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_phred_six_four
  doc: 'Use PHRED 64 as the offset for QC scores (default : PHRED33)'
  type: boolean?
  inputBinding:
    prefix: --phred64
- id: in_use_multiple_cores
  doc: '[threads]            Use multiple cores (default : 1)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_ancient_dna
  doc: "ancient DNA (default false)\nthis allows for partial overlap"
  type: boolean?
  inputBinding:
    prefix: --ancientdna
- id: in_loc
  doc: Location for lognormal dist. (default none)
  type: boolean?
  inputBinding:
    prefix: --loc
- id: in_scale
  doc: Scale for lognormal dist. (default none)
  type: boolean?
  inputBinding:
    prefix: --scale
- id: in_keep_orig
  doc: "Write original reads if they are trimmed or merged  (default false)\nSuch\
    \ reads will be marked as PCR duplicates"
  type: boolean?
  inputBinding:
    prefix: --keepOrig
- id: in_adapter_first_read
  doc: 'Adapter that is observed after the forward read (def. Multiplex: AGATCGGAAGAGCACACGTCTGAACTCCAG)'
  type: boolean?
  inputBinding:
    prefix: --adapterFirstRead
- id: in_adapter_second_read
  doc: 'Adapter that is observed after the reverse read (def. Multiplex: AGATCGGAAGAGCGTCGTGTAGGGAAAGAG)'
  type: boolean?
  inputBinding:
    prefix: --adapterSecondRead
- id: in_auto
  doc: 'Auto detect adapters, requires at least 1M reads, does NOT currently support
    UMIs (def. : false)'
  type: boolean?
  inputBinding:
    prefix: --auto
- id: in_first_read_chimera_filter
  doc: "If the forward read looks like this sequence, the cluster is filtered out.\n\
    Provide several sequences separated by comma (def. Multiplex: ACACTCTTTCCCTACACGTCTGAACTCCAG)"
  type: boolean?
  inputBinding:
    prefix: --FirstReadChimeraFilter
- id: in_key
  doc: Key sequence with which each sequence starts. Comma separate for forward and
    reverse reads. (default '')
  type: boolean?
  inputBinding:
    prefix: --key
- id: in_trim_key
  doc: Trim the key sequence even for untrimmed. (default 'false')
  type: boolean?
  inputBinding:
    prefix: --trimkey
- id: in_allow_missing
  doc: Allow one base in one key to be missing or wrong. (default false)
  type: boolean?
  inputBinding:
    prefix: --allowMissing
- id: in_um_if
  doc: '[bp]                             Extract bp for the UMI for the forward read.
    (default 0)'
  type: boolean?
  inputBinding:
    prefix: --umif
- id: in_u_mir
  doc: '[bp]                             Extract bp for the UMI for the reverse read.
    (default 0)'
  type: boolean?
  inputBinding:
    prefix: --umir
- id: in_u_mtf
  doc: '[bp]                             Remove overhangs of bp after the UMI for
    the forward read. (default 0)'
  type: boolean?
  inputBinding:
    prefix: --umtf
- id: in_um_tr
  doc: '[bp]                             Remove overhangs of bp after the UMI for
    the reverse read. (default 0)'
  type: boolean?
  inputBinding:
    prefix: --umtr
- id: in_trim_cut_off
  doc: Lowest number of adapter bases to be observed for single Read trimming (default
    1)
  type: boolean?
  inputBinding:
    prefix: --trimCutoff
- id: in_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/leehom:1.2.15--hda3bf64_0
cwlVersion: v1.1
baseCommand:
- leeHom
