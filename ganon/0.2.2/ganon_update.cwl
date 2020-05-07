class: CommandLineTool
id: ganon_update.cwl
inputs:
- id: o
  doc: ', --output-db-prefix  Output database prefix (.ibf, .map, .tax, .gnn). Default:
    overwrite current --db-prefix'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: ', --threads        Number of subprocesses/threads to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: -t
- id: seq_info
  doc: '[ [ ...]]  Mode to obtain sequence information. For each sequence entry provided,
    ganon requires taxonomic and seq. length information. If a small number of sequences
    is provided (<50000) or when --rank assembly, ganon will automatically obtained
    data with NCBI E-utils websevices (eutils). Offline mode will download batch files
    from NCBI Taxonomy and look for taxonomic ids in the order provided. Options:
    [nucl_gb nucl_wgs nucl_est nucl_gss pdb prot dead_nucl dead_wgs dead_prot], eutils
    (force webservices) or auto (uses eutils or [nucl_gb nucl_wgs]). Default: auto
    [Mutually exclusive --seq-info-file]'
  type: boolean
  inputBinding:
    prefix: --seq-info
- id: seq_info_file
  doc: Pre-generated file with sequence information (seqid <tab> seq.len <tab> taxid
    [<tab> assembly id]) [Mutually exclusive --seq-info]
  type: boolean
  inputBinding:
    prefix: --seq-info-file
- id: tax_dump_file
  doc: '[ [ ...]] Force use of a specific version of the (taxdump.tar.gz) or (nodes.dmp
    names.dmp [merged.dmp]) file(s) from NCBI Taxonomy (otherwise it will be automatically
    downloaded)'
  type: boolean
  inputBinding:
    prefix: --taxdump-file
- id: input_directory
  doc: Directory containing input files
  type: boolean
  inputBinding:
    prefix: --input-directory
- id: input_extension
  doc: Extension of files to use with --input-directory (provide it without * expansion,
    e.g. ".fna.gz")
  type: boolean
  inputBinding:
    prefix: --input-extension
- id: verbose
  doc: Verbose mode for ganon-build
  type: boolean
  inputBinding:
    prefix: --verbose
- id: db_prefix
  doc: Database input prefix (.ibf, .map, .tax, .gnn)
  type: string
  inputBinding:
    prefix: --db-prefix
- id: i
  doc: '[ [ ...]], --input-files [ [ ...]] Input reference sequence fasta files [.gz]'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- ganon
- update
