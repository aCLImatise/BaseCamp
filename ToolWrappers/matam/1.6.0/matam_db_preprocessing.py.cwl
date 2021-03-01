class: CommandLineTool
id: matam_db_preprocessing.py.cwl
inputs:
- id: in_input_ref
  doc: Input reference file (fasta format). Silva-formated taxonomies will be used
    if
  type: File?
  inputBinding:
    prefix: --input_ref
- id: in_verbose
  doc: Increase verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_cpu
  doc: Max number of CPU to use. Default is 1 cpu
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_max_memory
  doc: Maximum memory to use (in MBi). Default is 10000 MBi
  type: long?
  inputBinding:
    prefix: --max_memory
- id: in_min_length
  doc: Ref sequences minimum length
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_max_length
  doc: Ref sequences maximum length
  type: long?
  inputBinding:
    prefix: --max_length
- id: in_max_consecutive_n
  doc: "Maximum nb of consecutive Ns a sequence is allowed to have. Default is 5.\
    \ Setting\nit to 0 will remove all sequences with Ns. Ns in accepted sequences\
    \ will be\nreplaced by As"
  type: long?
  inputBinding:
    prefix: --max_consecutive_n
- id: in_clustering_id_threshold
  doc: Identity threshold for clustering. Default is 0.95
  type: double?
  inputBinding:
    prefix: --clustering_id_threshold
- id: in_by_kingdom
  doc: Perform clustering by kingdom
  type: boolean?
  inputBinding:
    prefix: --by_kingdom
- id: in_kingdoms
  doc: Kingdoms to clusterize the DB for. Default is ['archaea', 'bacteria', 'eukaryota']
  type: string[]
  inputBinding:
    prefix: --kingdoms
- id: in_out_db_name
  doc: Output MATAM db name. Default is composed from parameters
  type: string?
  inputBinding:
    prefix: --out_db_name
- id: in_keep_tmp
  doc: Do not remove tmp files
  type: boolean?
  inputBinding:
    prefix: --keep_tmp
- id: in_debug
  doc: Output debug infos
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_available
  doc: -d DBDIR, --db_dir DBDIR           Database output directory. Default is cwd
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
- matam_db_preprocessing.py
