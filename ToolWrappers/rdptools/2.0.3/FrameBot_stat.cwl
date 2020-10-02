class: CommandLineTool
id: FrameBot_stat.cwl
inputs:
- id: in_seq_desc
  doc: the description of the reference seq, tab-delimited file or fasta
  type: File
  inputBinding:
    prefix: --seq-desc
- id: in_identity
  doc: the minimum protein identity, default is 0, range [0-100]
  type: long
  inputBinding:
    prefix: --identity
- id: in_id_mapping
  doc: "Id mapping file. Output from Dereplicator\n(http://fungene.cme.msu.edu/FunGenePipeline/derep/form.spr)."
  type: File
  inputBinding:
    prefix: --id-mapping
- id: in_sample_mapping
  doc: "Sample mapping file. Output from Dereplicator\n(http://fungene.cme.msu.edu/FunGenePipeline/derep/form.spr)."
  type: File
  inputBinding:
    prefix: --sample-mapping
- id: in_stat_type
  doc: "stat | hist | summary | matrix | subset\nstat ouptuts the # of seqs passed\
    \ FrameBot, # of frameshifts for each sample\nhist outputs a nearest match refseq,\
    \ description and # of seqs close to the refseq at\ndifferent identity% ranges\n\
    summary outputs a list of subject(refseq), description and  # of seqs close to\
    \ the subject\nmatrix outputs the number of sequences to the nearest match. The\
    \ format is similar to a\ndata matrix used for R analysis\nsubset outputs the\
    \ number of sequences to the nearest match for only sequence IDs in sample\nmapping\
    \ file\n"
  type: long
  inputBinding:
    prefix: --stat-type
- id: in_get_frame_bot_stat_main
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_frame_bot_alignment_file_or_dir
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_out_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_id_mapping
  doc: "Id mapping file. Output from Dereplicator\n(http://fungene.cme.msu.edu/FunGenePipeline/derep/form.spr)."
  type: File
  outputBinding:
    glob: $(inputs.in_id_mapping)
- id: out_sample_mapping
  doc: "Sample mapping file. Output from Dereplicator\n(http://fungene.cme.msu.edu/FunGenePipeline/derep/form.spr)."
  type: File
  outputBinding:
    glob: $(inputs.in_sample_mapping)
- id: out_out_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- FrameBot
- stat
