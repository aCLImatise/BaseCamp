class: CommandLineTool
id: ggd_make_recipe.cwl
inputs:
- id: in_pv_packageversion_dp
  doc: "{GRCh37,GRCh38,GRCz10,GRCz11,canFam3,danRer10,danRer11,dm3,dm6,hg19,hg38,mm10,mm9}\n\
    [--authors AUTHORS] -pv PACKAGE_VERSION -dv\nDATA_VERSION -dp DATA_PROVIDER --summary\
    \ SUMMARY -k\nKEYWORD -cb\n{0-based-inclusive,0-based-exclusive,1-based-inclusive,1-based-exclusive,NA}\n\
    -n NAME\nscript"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_channel
  doc: the ggd channel to use. (Default = genomics)
  type: string
  inputBinding:
    prefix: --channel
- id: in_dependency
  doc: "any software dependencies (in bioconda, conda-forge)\nor data-dependency (in\
    \ ggd). May be as many times as\nneeded."
  type: string
  inputBinding:
    prefix: --dependency
- id: in_extra_file
  doc: "any files that the recipe creates that are not a *.gz\nand *.gz.tbi pair or\
    \ *.fa and *.fai pair. May be used\nmore than once"
  type: File
  inputBinding:
    prefix: --extra-file
- id: in_platform
  doc: "Whether to use noarch as the platfrom or the system\nplatform. If set to 'none'\
    \ the system platform will be\nused. (Default = noarch. Noarch means no architecture\n\
    and is platform agnostic.)"
  type: string
  inputBinding:
    prefix: --platform
- id: in_species
  doc: The species recipe is for
  type: string
  inputBinding:
    prefix: --species
- id: in_genome_build
  doc: The genome build the recipe is for
  type: string
  inputBinding:
    prefix: --genome-build
- id: in_authors
  doc: "The author(s) of the data recipe being created, (This\nrecipe)"
  type: string
  inputBinding:
    prefix: --authors
- id: in_package_version
  doc: "The version of the ggd package. (First time package =\n1, updated package\
    \ > 1)"
  type: long
  inputBinding:
    prefix: --package-version
- id: in_data_version
  doc: "The version of the data (itself) being downloaded and\nprocessed (EX: dbsnp-127)\
    \ If there is no data version\napparent we recommend you use the date associated\
    \ with\nthe files or something else that can uniquely identify\nthe 'version'\
    \ of the data"
  type: long
  inputBinding:
    prefix: --data-version
- id: in_data_provider
  doc: "The data provider where the data was accessed.\n(Example: UCSC, Ensembl, gnomAD,\
    \ etc.)"
  type: string
  inputBinding:
    prefix: --data-provider
- id: in_summary
  doc: A detailed comment describing the recipe
  type: string
  inputBinding:
    prefix: --summary
- id: in_keyword
  doc: "A keyword to associate with the recipe. May be\nspecified more that once.\
    \ Please add enough keywords\nto better describe and distinguish the recipe"
  type: string
  inputBinding:
    prefix: --keyword
- id: in_coordinate_base
  doc: "The genomic coordinate basing for the file(s) in the\nrecipe. That is, the\
    \ coordianances start at genomic\ncoordinate 0 or 1, and the end coordinate is\
    \ either\ninclusive (everything up to and including the end\ncoordinate) or exlcusive\
    \ (everthing up to but not\nincluding the end coordinate) Files that do not have\n\
    coordiante basing, like fasta files, specify NA for\nnot applicable."
  type: string
  inputBinding:
    prefix: --coordinate-base
- id: in_name
  doc: "The sub-name of the recipe being created. (e.g. cpg-\nislands, pfam-domains,\
    \ gaps, etc.) This will not be\nthe final name of the recipe, but will describe\
    \ what\ndata the recipe gets"
  type: string
  inputBinding:
    prefix: --name
- id: in_script
  doc: "bash script that contains the commands to obtain and\nprocess the data\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ggd
- make-recipe
