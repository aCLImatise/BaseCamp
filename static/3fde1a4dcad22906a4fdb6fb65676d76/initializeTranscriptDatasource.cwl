class: CommandLineTool
id: initializeTranscriptDatasource.cwl
inputs:
- id: in_name
  doc: name of the datasource.  For example, ensembl.  Or GENCODE
  type: string
  inputBinding:
    prefix: --name
- id: in_filter
  doc: "Filter to use from ['dummy', 'basic'].  For non-GENCODE ENSEMBL, this should\
    \ be set to dummy. default: basic"
  type: string
  inputBinding:
    prefix: --filter
- id: in_protein_map_file
  doc: "Protein mapping file (a tsv with transcript ID to protein ID .... Typically,\
    \ for ENSEMBL or GENCODE a file with ENST to ENSP mappings).\nThis utility can\
    \ require a lot of RAM (~4GB for gencode.v18).\nCreation of a gencode datasource\
    \ can require as much as two hours.\nNOTE about Filter:\nPlease see the filter\
    \ option.  Since this defaults to a GENCODE specific filter, which can be problematic\
    \ for\nENSEMBL-only.\nUse \"dummy\" for ENSEMBL-only datasources\nUse \"basic\"\
    \ for GENCODE datasources, unless you want to annotate using every available transcript.\n\
    Note that all transcripts are present in a datasource, so if a filter change is\
    \ needed to a datasource that has\nalready been generated, you can edit the config\
    \ file, instead of re-creating the entire datasource.\nIF you wish to have HGVS\
    \ support, you must provide the protein mapping file (--protein-map-file).\n"
  type: File
  inputBinding:
    prefix: --protein-map-file
- id: in_gtf_files
  doc: 'Location of the gtf files.  Multiple files can be specified as a comma separated
    list (e.g. file1,file2) without spaces '
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_files
  doc: Location of the fasta file (cDNA) associated with the gtf files.  Multiple
    files can be specified as a comma separated list (e.g. file1,file2) without spaces
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: Datasource output location.  This directory should NOT already exist.
  type: string
  inputBinding:
    position: 2
- id: in_genome_build
  doc: Genome build -- this must be specified correctly by the user.  For example,
    hg19.
  type: string
  inputBinding:
    position: 3
- id: in_version
  doc: version.  For example, v18
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- initializeTranscriptDatasource
