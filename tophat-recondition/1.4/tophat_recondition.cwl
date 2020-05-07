class: CommandLineTool
id: tophat_recondition.cwl
inputs:
- id: top_hat_result_dir
  doc: directory containing TopHat mapped and unmapped read files.
  type: string
  inputBinding:
    position: 0
- id: log_file
  doc: 'log file (optional, (default: result_dir/tophat- recondition.log)'
  type: string
  inputBinding:
    prefix: --logfile
- id: mapped_file
  doc: 'Name of the file containing mapped reads (default: accepted_hits.bam)'
  type: string
  inputBinding:
    prefix: --mapped-file
- id: quiet
  doc: quiet mode, no console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: result_dir
  doc: 'directory to write unmapped_fixup.bam to (default: tophat_output_dir)'
  type: string
  inputBinding:
    prefix: --result_dir
- id: unmapped_file
  doc: 'Name of the file containing unmapped reads (default: unmapped.bam)'
  type: string
  inputBinding:
    prefix: --unmapped-file
outputs: []
cwlVersion: v1.1
baseCommand:
- tophat-recondition
