class: CommandLineTool
id: traitar_new.cwl
inputs:
- id: in_models_dir
  doc: directory with phenotype models to be included
  type: string
  inputBinding:
    position: 0
- id: in_pf_acc_two_desc
  doc: a mapping between Pfam families and phenotype ids to
  type: long
  inputBinding:
    position: 1
- id: in_accessions
  doc: pt_id2acc_desc  a mapping between phenotype ids and descriptions
  type: string
  inputBinding:
    position: 2
- id: in_hmm_model_f
  doc: hmm database compatible with the phenotype archive
  type: string
  inputBinding:
    position: 0
- id: in_archive_name
  doc: name of the model, which is created
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- traitar
- new
