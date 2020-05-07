class: CommandLineTool
id: busco.cwl
inputs:
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: lineage
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: mode
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: other
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: i
  doc: FILE, --in FASTA FILE Input sequence file in FASTA format. Can be an assembled
    genome or transcriptome (DNA), or protein sequences from an annotated gene set.
  type: string
  inputBinding:
    prefix: -i
- id: cpu
  doc: Specify the number (N=integer) of threads/cores to use.
  type: string
  inputBinding:
    prefix: --cpu
- id: out
  doc: 'Give your analysis run a recognisable short name. Output folders and files
    will be labelled with this name. WARNING: do not provide a path'
  type: string
  inputBinding:
    prefix: --out
- id: out_path
  doc: Optional location for results folder, excluding results folder name. Default
    is current working directory.
  type: string
  inputBinding:
    prefix: --out_path
- id: evalue
  doc: 'E-value cutoff for BLAST searches. Allowed formats, 0.001 or 1e-03 (Default:
    1e-03)'
  type: string
  inputBinding:
    prefix: --evalue
- id: mode
  doc: 'Specify which BUSCO analysis mode to run. There are three valid modes: - geno
    or genome, for genome assemblies (DNA) - tran or transcriptome, for transcriptome
    assemblies (DNA) - prot or proteins, for annotated gene sets (protein)'
  type: string
  inputBinding:
    prefix: --mode
- id: lineage_dataset
  doc: Specify the name of the BUSCO lineage to be used.
  type: string
  inputBinding:
    prefix: --lineage_dataset
- id: force
  doc: Force rewriting of existing files. Must be used when output files with the
    provided name already exist.
  type: boolean
  inputBinding:
    prefix: --force
- id: limit
  doc: 'How many candidate regions (contig or transcript) to consider per BUSCO (default:
    3)'
  type: string
  inputBinding:
    prefix: --limit
- id: long
  doc: 'Optimization mode Augustus self-training (Default: Off) adds considerably
    to the run time, but can improve results for some non-model organisms'
  type: boolean
  inputBinding:
    prefix: --long
- id: quiet
  doc: Disable the info logs, displays only errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: augustus_parameters
  doc: Pass additional arguments to Augustus. All arguments should be contained within
    a single pair of quotation marks, separated by commas. E.g. '--param1=1,--param2=2'
  type: string
  inputBinding:
    prefix: --augustus_parameters
- id: augustus_species
  doc: Specify a species for Augustus training.
  type: string
  inputBinding:
    prefix: --augustus_species
- id: auto_lineage
  doc: Run auto-lineage to find optimum lineage path
  type: boolean
  inputBinding:
    prefix: --auto-lineage
- id: auto_lineage_prok
  doc: Run auto-lineage just on non-eukaryote trees to find optimum lineage path
  type: boolean
  inputBinding:
    prefix: --auto-lineage-prok
- id: auto_lineage_e_uk
  doc: Run auto-placement just on eukaryote tree to find optimum lineage path
  type: boolean
  inputBinding:
    prefix: --auto-lineage-euk
- id: update_data
  doc: Download and replace with last versions all lineages datasets and files necessary
    to their automated selection
  type: boolean
  inputBinding:
    prefix: --update-data
- id: offline
  doc: To indicate that BUSCO cannot attempt to download files
  type: boolean
  inputBinding:
    prefix: --offline
- id: config
  doc: Provide a config file
  type: string
  inputBinding:
    prefix: --config
- id: list_datasets
  doc: Print the list of available BUSCO datasets
  type: boolean
  inputBinding:
    prefix: --list-datasets
outputs: []
cwlVersion: v1.1
baseCommand:
- busco
