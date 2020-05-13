class: CommandLineTool
id: fc_select_reads_from_bam.py.cwl
inputs:
- id: input_bam_fof_n
  doc: File of BAM filenames. Paths are relative to dir of FOFN, not CWD.
  type: string
  inputBinding:
    position: 0
- id: raw_read_to_contigs
  doc: 'rawread_to_contigs file (from where?) (default: ./2-asm- falcon/read_maps/dump_rawread_ids/rawread_to_contigs)'
  type: string
  inputBinding:
    prefix: --rawread-to-contigs
- id: raw_read_ids
  doc: 'rawread_ids file (from where?) (default: ./2-asm- falcon/read_maps/dump_rawread_ids/rawread_ids)'
  type: string
  inputBinding:
    prefix: --rawread-ids
- id: sam_dir
  doc: 'Output directory for ctg.sam files (default: ./4-polish/reads)'
  type: string
  inputBinding:
    prefix: --sam-dir
- id: max_n_open_files
  doc: 'We write sam files several at-a-time, limited by this. (default: 50)'
  type: long
  inputBinding:
    prefix: --max-n-open-files
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_select_reads_from_bam.py
