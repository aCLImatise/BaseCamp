class: CommandLineTool
id: ConvertDb.py_genbank.cwl
inputs:
- id: in_list_tab_defaultnone
  doc: "A list of tab delimited database files. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -d
- id: in_explicit_output_file
  doc: "Explicit output file name. Note, this argument cannot\nbe used with the --failed,\
    \ --outdir, or --outname\narguments. If unspecified, then the output filename\n\
    will be based on the input filename(s). (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -o
- id: in_outdir
  doc: "Specify to changes the output directory to the\nlocation specified. The input\
    \ file directory is used\nif this is not specified. (default: None)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --outname
- id: in_format
  doc: 'Specify input and output format. (default: airr)'
  type: string?
  inputBinding:
    prefix: --format
- id: in_mol
  doc: "The source molecule type. Usually one of \"mRNA\" or\n\"genomic DNA\". (default:\
    \ mRNA)"
  type: string?
  inputBinding:
    prefix: --mol
- id: in_product
  doc: "The product name, such as \"immunoglobulin heavy\nchain\". (default: immunoglobulin\
    \ heavy chain)"
  type: string?
  inputBinding:
    prefix: --product
- id: in_db
  doc: "Name of the reference database used for alignment.\nUsually \"IMGT/GENE-DB\"\
    . (default: None)"
  type: string?
  inputBinding:
    prefix: --db
- id: in_inf
  doc: "Name and version of the inference tool used for\nreference alignment in the\
    \ form tool:version.\n(default: None)"
  type: string?
  inputBinding:
    prefix: --inf
- id: in_organism
  doc: 'The scientific name of the organism. (default: None)'
  type: string?
  inputBinding:
    prefix: --organism
- id: in_sex
  doc: "If specified, adds the given sex annotation to the\nfasta headers. (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --sex
- id: in_isolate
  doc: "If specified, adds the given isolate annotation\n(sample label) to the fasta\
    \ headers. (default: None)"
  type: string?
  inputBinding:
    prefix: --isolate
- id: in_tissue
  doc: "If specified, adds the given tissue-type annotation to\nthe fasta headers.\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --tissue
- id: in_cell_type
  doc: "If specified, adds the given cell-type annotation to\nthe fasta headers. (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --cell-type
- id: in_yaml_file_specifying
  doc: "A yaml file specifying sample features (BioSample\nattributes) in the form\
    \ 'variable: value'. If\nspecified, any features provided in the yaml file will\n\
    override those provided at the commandline. Note, this\nconfig file applies to\
    \ sample features only and cannot\nbe used for required source features such as\
    \ the\n--product or --mol argument. (default: None)"
  type: File?
  inputBinding:
    prefix: -y
- id: in_label
  doc: "If specified, add a field name to the sequence\nidentifier. Sequence identifiers\
    \ will be output in the\nform <label>=<id>. (default: None)"
  type: string?
  inputBinding:
    prefix: --label
- id: in_cf
  doc: "Field containing the C region call. If unspecified,\nthe C region gene call\
    \ will be excluded from the\nfeature table. (default: None)"
  type: string?
  inputBinding:
    prefix: --cf
- id: in_nf
  doc: "If specified, use the provided column to add the\nAIRR_READ_COUNT note to\
    \ the feature table. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --nf
- id: in_if
  doc: "If specified, use the provided column to add the\nAIRR_CELL_INDEX note to\
    \ the feature table. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --if
- id: in_allow_stop
  doc: "If specified, retain records in the output with stop\ncodons in the junction\
    \ region. In such records the CDS\nwill be removed and replaced with a similar\n\
    misc_feature in the feature table. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --allow-stop
- id: in_as_is_id
  doc: "If specified, use the existing sequence identifier for\nthe output identifier.\
    \ By default, only the row number\nwill be used as the identifier to avoid the\
    \ 50\ncharacter limit. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --asis-id
- id: in_as_is_calls
  doc: "Specify to prevent alleles from being parsed using the\nIMGT nomenclature.\
    \ Note, this requires the gene\nassignments to be exact matches to valid records\
    \ in\nthe references database specified by the --db\nargument. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --asis-calls
- id: in_allele_delim
  doc: "The delimiter to use for splitting the gene name from\nthe allele number.\
    \ Note, this only applies when\nspecifying --asis-calls. By default, this argument\n\
    will be ignored and allele numbers extracted under the\nexpectation of IMGT nomenclature\
    \ consistency.\n(default: *)"
  type: long?
  inputBinding:
    prefix: --allele-delim
- id: in_asn
  doc: "If specified, run tbl2asn to generate the .sqn\nsubmission file after making\
    \ the .fsa and .tbl files.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --asn
- id: in_sbt
  doc: "If provided along with --asn, use the specified file\nfor the template file\
    \ argument to tbl2asn. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --sbt
- id: in_exec
  doc: "The name or location of the tbl2asn executable.\n(default: tbl2asn)\n"
  type: long?
  inputBinding:
    prefix: --exec
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/changeo:1.0.2--py_0
cwlVersion: v1.1
baseCommand:
- ConvertDb.py
- genbank
