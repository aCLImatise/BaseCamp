class: CommandLineTool
id: configureESTmapper.pl.cwl
inputs:
- id: in_genome
  doc: the genome to map to
  type: string?
  inputBinding:
    prefix: -genome
- id: in_genome_dir
  doc: the directory to save the configuration in
  type: Directory?
  inputBinding:
    prefix: -genomedir
- id: in_mer_size
  doc: use m-mers (default 20)
  type: long?
  inputBinding:
    prefix: -mersize
- id: in_mer_skip
  doc: skip s m-mers between mers (default 0, use all mers)
  type: long?
  inputBinding:
    prefix: -merskip
- id: in_memory
  doc: use M MB memory for the search processes (default 1000MB)
  type: long?
  inputBinding:
    prefix: -memory
- id: in_segments
  doc: use S search processes (default, based on memory size)
  type: long?
  inputBinding:
    prefix: -segments
- id: in_sge
  doc: compute the configuration on the grid; args are passed to qsub
  type: boolean?
  inputBinding:
    prefix: -sge
- id: in_sge_name
  doc: sge job name (default 'EMconfig')
  type: boolean?
  inputBinding:
    prefix: -sgename
- id: in_local
  doc: compute the configuration right now (the default)
  type: boolean?
  inputBinding:
    prefix: -local
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- configureESTmapper.pl
