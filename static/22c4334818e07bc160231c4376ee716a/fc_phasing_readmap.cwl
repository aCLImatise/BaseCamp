class: CommandLineTool
id: fc_phasing_readmap.py.cwl
inputs:
- id: phased_reads
  doc: 'path to read vs. phase map (default: None)'
  type: string
  inputBinding:
    prefix: --phased-reads
- id: raw_read_ids_fn
  doc: 'Input. Typically 3-unzip/reads/dump_rawread_ids/rawreads_ids (default: None)'
  type: string
  inputBinding:
    prefix: --rawread-ids-fn
- id: p_read_ids_fn
  doc: 'Input. Typically 3-unzip/reads/dump_rawread_ids/rawreads_ids (default: None)'
  type: string
  inputBinding:
    prefix: --pread-ids-fn
- id: p_read_to_contigs_fn
  doc: 'Input. Typically 3-unzip/reads/pread_to_contigs (default: None)'
  type: string
  inputBinding:
    prefix: --pread-to-contigs-fn
- id: the_ctg_id
  doc: 'contig identifier in the bam file (default: None)'
  type: string
  inputBinding:
    prefix: --the-ctg-id
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_phasing_readmap.py
