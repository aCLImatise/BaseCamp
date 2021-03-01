class: CommandLineTool
id: motifscan_genome.cwl
inputs:
- id: in_verbose
  doc: Enable verbose log messages.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_list
  doc: Display installed genome assemblies.
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_list_remote
  doc: Display available remote genome assemblies.
  type: boolean?
  inputBinding:
    prefix: --list-remote
- id: in_search
  doc: Search for genome assemblies in a remote database.
  type: string?
  inputBinding:
    prefix: --search
- id: in_install
  doc: Install a new genome assembly.
  type: boolean?
  inputBinding:
    prefix: --install
- id: in_uninstall
  doc: Uninstall a genome assembly.
  type: string?
  inputBinding:
    prefix: --uninstall
- id: in_name
  doc: Name of the genome assembly to be installed.
  type: string?
  inputBinding:
    prefix: --name
- id: in_local_genome_sequences
  doc: Local genome sequences file(s) in FASTA format.
  type: string[]
  inputBinding:
    prefix: -i
- id: in_local_gene_annotation
  doc: Local gene annotation (refGene.txt) file.
  type: File?
  inputBinding:
    prefix: -a
- id: in_remote
  doc: Download required data files from a remote assembly.
  type: string?
  inputBinding:
    prefix: --remote
- id: in_output_dir
  doc: "Write to a given directory instead of the default\ndirectory."
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_database
  doc: "Which remote database is used to list/install/search\ngenome assemblies. Default:\
    \ ucsc"
  type: string?
  inputBinding:
    prefix: --database
- id: in_clean
  doc: Clean the download directory after installation.
  type: boolean?
  inputBinding:
    prefix: --clean
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- motifscan
- genome
