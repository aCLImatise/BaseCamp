class: CommandLineTool
id: tophat_recondition.cwl
inputs:
- id: in_log_file
  doc: "log file (optional, (default: result_dir/tophat-\nrecondition.log)"
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_mapped_file
  doc: "Name of the file containing mapped reads (default:\naccepted_hits.bam)"
  type: File?
  inputBinding:
    prefix: --mapped-file
- id: in_quiet
  doc: quiet mode, no console output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_result_dir
  doc: "directory to write unmapped_fixup.bam to (default:\ntophat_output_dir)"
  type: Directory?
  inputBinding:
    prefix: --result_dir
- id: in_unmapped_file
  doc: "Name of the file containing unmapped reads (default:\nunmapped.bam)"
  type: File?
  inputBinding:
    prefix: --unmapped-file
- id: in_files_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tophat-recondition
