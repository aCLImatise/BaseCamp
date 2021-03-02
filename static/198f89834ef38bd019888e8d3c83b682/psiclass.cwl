class: CommandLineTool
id: psiclass.cwl
inputs:
- id: in_paths_alignment_bam
  doc: ': paths to the alignment BAM files. Use comma to separate multiple BAM files'
  type: string?
  inputBinding:
    prefix: -b
- id: in_path_trusted_used
  doc: ': path to the trusted splice file (default: not used)'
  type: File?
  inputBinding:
    prefix: -s
- id: in_prefix_output_files
  doc: ': prefix of output files (default: ./psiclass)'
  type: string?
  inputBinding:
    prefix: -o
- id: in_number_processesthreads_default
  doc: ': number of processes/threads (default: 1)'
  type: long?
  inputBinding:
    prefix: -p
- id: in_only_use_subexons
  doc: ': only use the subexons with classifier score <= than the given number (default:
    0.05)'
  type: double?
  inputBinding:
    prefix: -c
- id: in_sa
  doc: ': the minimum average number of supported read for retained introns (default:
    0.5)'
  type: double?
  inputBinding:
    prefix: --sa
- id: in_vd
  doc: ': the minimum average coverage depth of a transcript to be reported (defaults:
    1.0)'
  type: double?
  inputBinding:
    prefix: --vd
- id: in_max_dp_constraint_size
  doc: ': the number of subexons a constraint can cover in DP. (default: 7. -1 for
    inf)'
  type: boolean?
  inputBinding:
    prefix: --maxDpConstraintSize
- id: in_bam_group
  doc: ': path to the file listing the group id of BAMs in the --lb file (default:
    not used)'
  type: File?
  inputBinding:
    prefix: --bamGroup
- id: in_primary_paralog
  doc: ': use primary alignment to retain paralog genes (default: use unique alignments)'
  type: boolean?
  inputBinding:
    prefix: --primaryParalog
- id: in_stage
  doc: ":  (default: 0)\n0-start from beginning - building splice sites for each sample\n\
    1-start from building subexon files for each sample\n2-start from combining subexon\
    \ files across samples\n3-start from assembling the transcripts for each sample\n\
    4-start from voting the consensus transcripts across samples\n"
  type: long?
  inputBinding:
    prefix: --stage
- id: in_or
  doc: '--lb STRING: path to the file listing the alignments BAM files'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- psiclass
