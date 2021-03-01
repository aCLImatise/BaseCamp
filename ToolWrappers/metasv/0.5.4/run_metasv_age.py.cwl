class: CommandLineTool
id: run_metasv_age.py.cwl
inputs:
- id: in_reference
  doc: 'Reference FASTA (default: None)'
  type: string?
  inputBinding:
    prefix: --reference
- id: in_assembly
  doc: 'Assembly FASTA (default: None)'
  type: string?
  inputBinding:
    prefix: --assembly
- id: in_age
  doc: 'Path to AGE executable (default: None)'
  type: File?
  inputBinding:
    prefix: --age
- id: in_work
  doc: 'Work directory (default: work)'
  type: Directory?
  inputBinding:
    prefix: --work
- id: in_pad
  doc: "Padding to apply on both sides of the bed regions\n(default: 500)"
  type: long?
  inputBinding:
    prefix: --pad
- id: in_n_threads
  doc: 'Number of threads to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_chrs
  doc: 'Chromosome list to process (default: [])'
  type: string[]
  inputBinding:
    prefix: --chrs
- id: in_sv_types
  doc: 'SV types list to process (INS, DEL, INV) (default: [])'
  type: string[]
  inputBinding:
    prefix: --sv_types
- id: in_timeout
  doc: 'Max time for assembly processes to run (default: 300)'
  type: long?
  inputBinding:
    prefix: --timeout
- id: in_keep_temp
  doc: "Don't delete temporary files (default: False)"
  type: boolean?
  inputBinding:
    prefix: --keep_temp
- id: in_assembly_tool
  doc: 'Tool used for assembly (default: spades)'
  type: string?
  inputBinding:
    prefix: --assembly_tool
- id: in_min_contig_len
  doc: 'Minimum length of contig to consider (default: 200)'
  type: long?
  inputBinding:
    prefix: --min_contig_len
- id: in_max_region_len
  doc: 'Maximum length of an SV interval (default: 1000000)'
  type: long?
  inputBinding:
    prefix: --max_region_len
- id: in_min_del_sub_align_len
  doc: 'Minimum length of deletion sub-alginment (default: 50)'
  type: long?
  inputBinding:
    prefix: --min_del_subalign_len
- id: in_min_in_v_sub_align_len
  doc: "Minimum length of inversion sub-alginment (default:\n50)"
  type: long?
  inputBinding:
    prefix: --min_inv_subalign_len
- id: in_age_window
  doc: "Window size for AGE to merge nearby breakpoints\n(default: 20)"
  type: long?
  inputBinding:
    prefix: --age_window
- id: in_bed_file_assembly
  doc: "BED file for assembly (default: None)\n"
  type: File?
  inputBinding:
    prefix: --intervals_bed
- id: in_run_age_files
  doc: Run AGE on files assembled under MetaSV.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_metasv_age.py
