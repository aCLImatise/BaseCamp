class: CommandLineTool
id: bp_genbank_ref_extractor.cwl
inputs:
- id: in_assembly
  doc: "When retrieving the sequence, a specific assemly can be defined. The\nvalue\
    \ expected is a regex that will be case-insensitive. If it\nmatches more than\
    \ one assembly, it will use the first match. It\ndefauls to \"(primary|reference)\
    \ assembly\"."
  type: boolean
  inputBinding:
    prefix: --assembly
- id: in_debug
  doc: "If set, even more output will be printed that may help on debugging.\nUnlike\
    \ the messages from --verbose and --very-verbose, these will\nnot appear on the\
    \ log file unless this option is selected. This\noption also sets --very-verbose."
  type: File
  inputBinding:
    prefix: --debug
- id: in_downstream
  doc: "Specifies the number of extra base pairs to be retrieved downstream\nof the\
    \ gene. This extra base pairs will only affect the gene\nsequence, not the transcript\
    \ or proteins."
  type: boolean
  inputBinding:
    prefix: --downstream
- id: in_email
  doc: "A valid email used to connect to the NCBI servers. This may be used\nby NCBI\
    \ to contact users in case of problems and before blocking\naccess in case of\
    \ heavy usage."
  type: boolean
  inputBinding:
    prefix: --email
- id: in_format
  doc: "Specifies the format that the sequences will be saved. Defaults to\n*genbank*\
    \ format. Valid formats are 'genbank' or 'fasta'."
  type: boolean
  inputBinding:
    prefix: --format
- id: in_genes
  doc: "Specifies the name for gene file. By default, they are not saved. If\nno value\
    \ is given defaults to its UID. Possible values are 'uid',\n'name', 'symbol' (the\
    \ official symbol or nomenclature)."
  type: boolean
  inputBinding:
    prefix: --genes
- id: in_limit
  doc: "When making a query, limit the result to these first specific\nresults. This\
    \ is to prevent the use of specially unspecific queries\nand a warning will be\
    \ given if a query returns more results than the\nlimit. The default value is\
    \ 200. Note that this limit is for *each*\nsearch."
  type: boolean
  inputBinding:
    prefix: --limit
- id: in_non_on_coding
  doc: "Some protein coding genes have transcripts that are non-coding. By\ndefault,\
    \ these sequences are saved as well. --nonon-coding can be\nused to ignore those\
    \ transcripts."
  type: boolean
  inputBinding:
    prefix: --nonon-coding
- id: in_proteins
  doc: "Specifies the name for proteins file. By default, they are not\nsaved. If\
    \ no value is given defaults to its accession. Possible\nvalues are 'accession',\
    \ 'description', 'gene' (the corresponding\ngene ID) and 'transcript' (the corresponding\
    \ transcript accesion).\nNote that if not using 'accession' is possible for files\
    \ to be\noverwritten. It is possible for the same gene to encode more than\none\
    \ protein or different proteins to have the same description."
  type: boolean
  inputBinding:
    prefix: --proteins
- id: in_no_pseudo
  doc: "By default, sequences of pseudo genes will be saved. --nopseudo can\nbe used\
    \ to ignore those genes."
  type: boolean
  inputBinding:
    prefix: --nopseudo
- id: in_save
  doc: "Specifies the path for the directory where the sequence and log\nfiles will\
    \ be saved. If the directory does not exist it will be\ncreated altough the path\
    \ to it must exist. Files on the directory\nmay be rewritten if necessary. If\
    \ unspecified, a directory named\nextracted sequences on the current directory\
    \ will be used."
  type: boolean
  inputBinding:
    prefix: --save
- id: in_save_data
  doc: "This options saves the data (gene UIDs, description, product\naccessions,\
    \ etc) to a file. As an optional value, the file format\ncan be specified. Defaults\
    \ to CSV.\nCurrently only CSV is supported.\nSaving the data structure as a CSV\
    \ file, requires the installation\nof the Text::CSV module."
  type: boolean
  inputBinding:
    prefix: --save-data
- id: in_transcripts
  doc: "Specifies the name for transcripts file. By default, they are not\nsaved.\
    \ If no value is given defaults to its accession. Possible\nvalues are 'accession',\
    \ 'description', 'gene' (the corresponding\ngene ID) and 'protein' (the protein\
    \ the transcript encodes).\nNote that if not using 'accession' is possible for\
    \ files to be\noverwritten. It is possible for the same gene to have more than\
    \ one\ntranscript or different transcripts to have the same description.\nAlso,\
    \ non-coding transcripts will create problems if using\n'protein'."
  type: boolean
  inputBinding:
    prefix: --transcripts
- id: in_upstream
  doc: "Specifies the number of extra base pairs to be extracted upstream of\nthe\
    \ gene. This extra base pairs will only affect the gene sequence,\nnot the transcript\
    \ or proteins."
  type: boolean
  inputBinding:
    prefix: --upstream
- id: in_verbose
  doc: "If set, program becomes verbose. For an extremely verbose program,\nuse --very-verbose\
    \ instead."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: "If set, program becomes extremely verbose. Setting this option,\nautomatically\
    \ sets --verbose as well. For help in debugging,\nconsider using --debug"
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: in_bioperl_lat_bioperl_dot_org
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
- id: in_support
  doc: "Please direct usage questions or support issues to the mailing list:\n*bioperl-l@bioperl.org*\n\
    rather than to the module maintainer directly. Many experienced and\nreponsive\
    \ experts will be able look at the problem and quickly address\nit. Please include\
    \ a thorough description of the problem with code and\ndata examples if at all\
    \ possible."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_debug
  doc: "If set, even more output will be printed that may help on debugging.\nUnlike\
    \ the messages from --verbose and --very-verbose, these will\nnot appear on the\
    \ log file unless this option is selected. This\noption also sets --very-verbose."
  type: File
  outputBinding:
    glob: $(inputs.in_debug)
cwlVersion: v1.1
baseCommand:
- bp_genbank_ref_extractor
