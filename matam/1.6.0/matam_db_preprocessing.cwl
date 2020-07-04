class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/matam_db_preprocessing.py.cwl
inputs:
- id: input_ref
  doc: Input reference file (fasta format). Silva-formated taxonomies will be used
    if available
  type: string
  inputBinding:
    prefix: --input_ref
- id: db_dir
  doc: Database output directory. Default is cwd
  type: string
  inputBinding:
    prefix: --db_dir
- id: verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: cpu
  doc: Max number of CPU to use. Default is 1 cpu
  type: string
  inputBinding:
    prefix: --cpu
- id: max_memory
  doc: Maximum memory to use (in MBi). Default is 10000 MBi
  type: long
  inputBinding:
    prefix: --max_memory
- id: min_length
  doc: Ref sequences minimum length
  type: long
  inputBinding:
    prefix: --min_length
- id: max_length
  doc: Ref sequences maximum length
  type: long
  inputBinding:
    prefix: --max_length
- id: max_consecutive_n
  doc: Maximum nb of consecutive Ns a sequence is allowed to have. Default is 5. Setting
    it to 0 will remove all sequences with Ns. Ns in accepted sequences will be replaced
    by As
  type: long
  inputBinding:
    prefix: --max_consecutive_n
- id: clustering_id_threshold
  doc: Identity threshold for clustering. Default is 0.95
  type: string
  inputBinding:
    prefix: --clustering_id_threshold
- id: by_kingdom
  doc: Perform clustering by kingdom
  type: boolean
  inputBinding:
    prefix: --by_kingdom
- id: kingdoms
  doc: Kingdoms to clusterize the DB for. Default is ['archaea', 'bacteria', 'eukaryota']
  type: string[]
  inputBinding:
    prefix: --kingdoms
- id: out_db_name
  doc: Output MATAM db name. Default is composed from parameters
  type: string
  inputBinding:
    prefix: --out_db_name
- id: keep_tmp
  doc: Do not remove tmp files
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: debug
  doc: Output debug infos
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- matam_db_preprocessing.py
