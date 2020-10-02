class: CommandLineTool
id: fc_select_reads_from_bam.py.cwl
inputs:
- id: in_raw_read_to_contigs
  doc: "rawread_to_contigs file (from where?) (default:\n./2-asm-\nfalcon/read_maps/dump_rawread_ids/rawread_to_contigs)"
  type: File
  inputBinding:
    prefix: --rawread-to-contigs
- id: in_raw_read_ids
  doc: "rawread_ids file (from where?) (default: ./2-asm-\nfalcon/read_maps/dump_rawread_ids/rawread_ids)"
  type: File
  inputBinding:
    prefix: --rawread-ids
- id: in_sam_dir
  doc: "Output directory for ctg.sam files (default:\n./4-polish/reads)"
  type: Directory
  inputBinding:
    prefix: --sam-dir
- id: in_max_n_open_files
  doc: "We write sam files several at-a-time, limited by this.\n(default: 50)\n"
  type: long
  inputBinding:
    prefix: --max-n-open-files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sam_dir
  doc: "Output directory for ctg.sam files (default:\n./4-polish/reads)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_sam_dir)
cwlVersion: v1.1
baseCommand:
- fc_select_reads_from_bam.py
