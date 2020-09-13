class: CommandLineTool
id: ../../../fc_phasing_readmap.py.cwl
inputs:
- id: in_p_read_to_contigs_fn
  doc: ''
  type: string
  inputBinding:
    prefix: --pread-to-contigs-fn
- id: in_the_ctg_id
  doc: ''
  type: string
  inputBinding:
    prefix: --the-ctg-id
- id: in_phased_reads
  doc: 'path to read vs. phase map (default: None)'
  type: File
  inputBinding:
    prefix: --phased-reads
- id: in_raw_read_ids_fn
  doc: "Input. Typically\n3-unzip/reads/dump_rawread_ids/rawreads_ids (default:\n\
    None)"
  type: long
  inputBinding:
    prefix: --rawread-ids-fn
- id: in_p_read_ids_fn
  doc: "Input. Typically\n3-unzip/reads/dump_rawread_ids/rawreads_ids (default:\n\
    None)"
  type: long
  inputBinding:
    prefix: --pread-ids-fn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fc_phasing_readmap.py
