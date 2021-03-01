class: CommandLineTool
id: ipyrad.cwl
inputs:
- id: in_results
  doc: show results summary for Assembly in params.txt and
  type: boolean?
  inputBinding:
    prefix: --results
- id: in_quiet
  doc: do not print to stderror or stdout.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: print lots more info to ipyrad_log.txt.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_create_new_file
  doc: create new file 'params-{new}.txt' in current
  type: File?
  inputBinding:
    prefix: -n
- id: in_set_assembly_s
  doc: Set of assembly steps to run, e.g., -s 123
  type: long?
  inputBinding:
    prefix: -s
- id: in_create_new_branch
  doc: "[BRANCH [BRANCH ...]]\ncreate new branch of Assembly as params-{branch}.txt,\n\
    and can be used to drop samples from Assembly."
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_merge_multiple_assemblies
  doc: "[MERGE [MERGE ...]]\nmerge multiple Assemblies into one joint Assembly, and\n\
    can be used to merge Samples into one Sample."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_number_cpu_cores
  doc: number of CPU cores to use (Default=0=All)
  type: long?
  inputBinding:
    prefix: -c
- id: in_tune_threading_default
  doc: tune threading of multi-threaded binaries (Default=2)
  type: long?
  inputBinding:
    prefix: -t
- id: in_mpi
  doc: connect to parallel CPUs across multiple nodes
  type: boolean?
  inputBinding:
    prefix: --MPI
- id: in_ip_cluster
  doc: "[IPCLUSTER]\nconnect to running ipcluster, enter profile name or\nprofile='default'"
  type: boolean?
  inputBinding:
    prefix: --ipcluster
- id: in_download
  doc: "[DOWNLOAD [DOWNLOAD ...]]\ndownload fastq files by accession (e.g., SRP or\
    \ SRR)"
  type: boolean?
  inputBinding:
    prefix: --download
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_exit
  doc: -f, --force           force overwrite of existing data
  type: string
  inputBinding:
    position: 0
- id: in_directory
  doc: '-p PARAMS             path to params file for Assembly:'
  type: Directory
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ipyrad
