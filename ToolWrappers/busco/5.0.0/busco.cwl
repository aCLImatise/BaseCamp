class: CommandLineTool
id: busco.cwl
inputs:
- id: in_file__fasta
  doc: "FILE, --in FASTA FILE\nInput sequence file in FASTA format. Can be an assembled\
    \ genome or transcriptome (DNA), or protein sequences from an annotated gene set."
  type: File?
  inputBinding:
    prefix: -i
- id: in_out
  doc: 'Give your analysis run a recognisable short name. Output folders and files
    will be labelled with this name. WARNING: do not provide a path'
  type: File?
  inputBinding:
    prefix: --out
- id: in_specify_busco_mode
  doc: "Specify which BUSCO analysis mode to run.\nThere are three valid modes:\n\
    - geno or genome, for genome assemblies (DNA)\n- tran or transcriptome, for transcriptome\
    \ assemblies (DNA)\n- prot or proteins, for annotated gene sets (protein)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_lineage_dataset
  doc: Specify the name of the BUSCO lineage to be used.
  type: string?
  inputBinding:
    prefix: --lineage_dataset
- id: in_auto_lineage
  doc: Run auto-lineage to find optimum lineage path
  type: boolean?
  inputBinding:
    prefix: --auto-lineage
- id: in_auto_lineage_prok
  doc: Run auto-lineage just on non-eukaryote trees to find optimum lineage path
  type: boolean?
  inputBinding:
    prefix: --auto-lineage-prok
- id: in_auto_lineage_e_uk
  doc: Run auto-placement just on eukaryote tree to find optimum lineage path
  type: boolean?
  inputBinding:
    prefix: --auto-lineage-euk
- id: in_cpu
  doc: Specify the number (N=integer) of threads/cores to use.
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: Force rewriting of existing files. Must be used when output files with the
    provided name already exist.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_restart
  doc: Continue a run that had already partially completed.
  type: boolean?
  inputBinding:
    prefix: --restart
- id: in_quiet
  doc: Disable the info logs, displays only errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_out_path
  doc: Optional location for results folder, excluding results folder name. Default
    is current working directory.
  type: File?
  inputBinding:
    prefix: --out_path
- id: in_download_path
  doc: Specify local filepath for storing BUSCO dataset downloads
  type: File?
  inputBinding:
    prefix: --download_path
- id: in_datasets_version
  doc: Specify the version of BUSCO datasets, e.g. odb10
  type: long?
  inputBinding:
    prefix: --datasets_version
- id: in_download_base_url
  doc: Set the url to the remote BUSCO dataset location
  type: string?
  inputBinding:
    prefix: --download_base_url
- id: in_update_data
  doc: Download and replace with last versions all lineages datasets and files necessary
    to their automated selection
  type: boolean?
  inputBinding:
    prefix: --update-data
- id: in_offline
  doc: To indicate that BUSCO cannot attempt to download files
  type: boolean?
  inputBinding:
    prefix: --offline
- id: in_meta_e_uk_parameters
  doc: Pass additional arguments to Metaeuk for the first run. All arguments should
    be contained within a single pair of quotation marks, separated by commas. E.g.
    "--param1=1,--param2=2"
  type: long?
  inputBinding:
    prefix: --metaeuk_parameters
- id: in_meta_e_uk_rerun_parameters
  doc: Pass additional arguments to Metaeuk for the second run. All arguments should
    be contained within a single pair of quotation marks, separated by commas. E.g.
    "--param1=1,--param2=2"
  type: long?
  inputBinding:
    prefix: --metaeuk_rerun_parameters
- id: in_evalue
  doc: 'E-value cutoff for BLAST searches. Allowed formats, 0.001 or 1e-03 (Default:
    1e-03)'
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_limit
  doc: 'How many candidate regions (contig or transcript) to consider per BUSCO (default:
    3)'
  type: long?
  inputBinding:
    prefix: --limit
- id: in_augustus
  doc: Use augustus gene predictor for eukaryote runs
  type: boolean?
  inputBinding:
    prefix: --augustus
- id: in_augustus_parameters
  doc: Pass additional arguments to Augustus. All arguments should be contained within
    a single pair of quotation marks, separated by commas. E.g. "--param1=1,--param2=2"
  type: long?
  inputBinding:
    prefix: --augustus_parameters
- id: in_augustus_species
  doc: Specify a species for Augustus training.
  type: string?
  inputBinding:
    prefix: --augustus_species
- id: in_long
  doc: 'Optimization Augustus self-training mode (Default: Off); adds considerably
    to the run time, but can improve results for some non-model organisms'
  type: boolean?
  inputBinding:
    prefix: --long
- id: in_config
  doc: Provide a config file
  type: File?
  inputBinding:
    prefix: --config
- id: in_list_datasets
  doc: Print the list of available BUSCO datasets
  type: boolean?
  inputBinding:
    prefix: --list-datasets
- id: in_sequence_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_lineage
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_output_name
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_var_30
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_other
  doc: ''
  type: string?
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Give your analysis run a recognisable short name. Output folders and files
    will be labelled with this name. WARNING: do not provide a path'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_path
  doc: Optional location for results folder, excluding results folder name. Default
    is current working directory.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/busco:5.0.0--py_0
cwlVersion: v1.1
baseCommand:
- busco
