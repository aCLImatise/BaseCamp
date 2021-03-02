class: CommandLineTool
id: MetaCHIP_BP.cwl
inputs:
- id: in_output_prefix
  doc: output prefix
  type: string?
  inputBinding:
    prefix: -p
- id: in_grouping_rank
  doc: grouping rank
  type: string?
  inputBinding:
    prefix: -r
- id: in_grouping_file
  doc: grouping file
  type: File?
  inputBinding:
    prefix: -g
- id: in_cov
  doc: 'coverage cutoff, default: 75'
  type: long?
  inputBinding:
    prefix: -cov
- id: in_al
  doc: 'alignment length cutoff, default: 200'
  type: long?
  inputBinding:
    prefix: -al
- id: in_flk
  doc: 'the length of flanking sequences to plot (Kbp), default: 10'
  type: long?
  inputBinding:
    prefix: -flk
- id: in_ip
  doc: 'identity percentile cutoff, default: 90'
  type: long?
  inputBinding:
    prefix: -ip
- id: in_ei
  doc: 'end match identity cutoff, default: 80'
  type: long?
  inputBinding:
    prefix: -ei
- id: in_number_threads_default
  doc: 'number of threads, default: 1'
  type: long?
  inputBinding:
    prefix: -t
- id: in_no_eb_check
  doc: "disable end break and contig match check for fast processing,\nnot recommend\
    \ for metagenome-assembled genomes (MAGs)"
  type: boolean?
  inputBinding:
    prefix: -NoEbCheck
- id: in_force
  doc: overwrite previous results
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_quiet
  doc: Do not report progress
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_tmp
  doc: keep temporary files
  type: boolean?
  inputBinding:
    prefix: -tmp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- MetaCHIP
- BP
