class: CommandLineTool
id: ../../../spingo.cwl
inputs:
- id: _version_information
  doc: '[ --version ]             get version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_kmer_size
  doc: '[ --kmersize ] arg (=8)   K-mer size'
  type: boolean
  inputBinding:
    prefix: -k
- id: arg_number_bootstrap
  doc: '[ --bootstrap ] arg (=10) number of bootstrap samples'
  type: boolean
  inputBinding:
    prefix: -b
- id: arg_fraction_subsampled
  doc: '[ --subsample ] arg       fraction of kmers to be subsampled for  bootstrapping.
    Default is kmersize'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_number_processor
  doc: '[ --processors ] arg (=1) number of processor threads'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_path_fasta_format_reference
  doc: '[ --database ] arg        path to the fasta format reference database'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_path_fasta_format_input
  doc: '[ --input ] arg           path to the fasta format input file'
  type: boolean
  inputBinding:
    prefix: -i
- id: specified_index_will
  doc: '[ --write-index ]         if specified, index will be written to disk'
  type: boolean
  inputBinding:
    prefix: -w
- id: specified_species_lead
  doc: '[ --ambiguous ]           if specified, species which lead to an ambiguous
    hit will be listed'
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- spingo
