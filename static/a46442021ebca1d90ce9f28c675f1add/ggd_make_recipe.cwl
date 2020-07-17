class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ggd_make_recipe.cwl
inputs:
- id: channel
  doc: the ggd channel to use. (Default = genomics)
  type: string
  inputBinding:
    prefix: --channel
- id: dependency
  doc: any software dependencies (in bioconda, conda-forge) or data-dependency (in
    ggd). May be as many times as needed.
  type: string
  inputBinding:
    prefix: --dependency
- id: extra_file
  doc: any files that the recipe creates that are not a *.gz and *.gz.tbi pair or
    *.fa and *.fai pair. May be used more than once
  type: string
  inputBinding:
    prefix: --extra-file
- id: platform
  doc: Whether to use noarch as the platfrom or the system platform. If set to 'none'
    the system platform will be used. (Default = noarch. Noarch means no architecture
    and is platform agnostic.)
  type: string
  inputBinding:
    prefix: --platform
- id: species
  doc: The species recipe is for
  type: string
  inputBinding:
    prefix: --species
- id: genome_build
  doc: The genome build the recipe is for
  type: string
  inputBinding:
    prefix: --genome-build
- id: authors
  doc: The author(s) of the data recipe being created, (This recipe)
  type: string
  inputBinding:
    prefix: --authors
- id: package_version
  doc: The version of the ggd package. (First time package = 1, updated package >
    1)
  type: string
  inputBinding:
    prefix: --package-version
- id: data_version
  doc: "The version of the data (itself) being downloaded and processed (EX: dbsnp-127)\
    \ If there is no data version apparent we recommend you use the date associated\
    \ with the files or something else that can uniquely identify the 'version' of\
    \ the data"
  type: string
  inputBinding:
    prefix: --data-version
- id: data_provider
  doc: 'The data provider where the data was accessed. (Example: UCSC, Ensembl, gnomAD,
    etc.)'
  type: string
  inputBinding:
    prefix: --data-provider
- id: summary
  doc: A detailed comment describing the recipe
  type: string
  inputBinding:
    prefix: --summary
- id: keyword
  doc: A keyword to associate with the recipe. May be specified more that once. Please
    add enough keywords to better describe and distinguish the recipe
  type: string
  inputBinding:
    prefix: --keyword
- id: coordinate_base
  doc: The genomic coordinate basing for the file(s) in the recipe. That is, the coordianances
    start at genomic coordinate 0 or 1, and the end coordinate is either inclusive
    (everything up to and including the end coordinate) or exlcusive (everthing up
    to but not including the end coordinate) Files that do not have coordiante basing,
    like fasta files, specify NA for not applicable.
  type: string
  inputBinding:
    prefix: --coordinate-base
- id: name
  doc: The sub-name of the recipe being created. (e.g. cpg- islands, pfam-domains,
    gaps, etc.) This will not be the final name of the recipe, but will describe what
    data the recipe gets
  type: string
  inputBinding:
    prefix: --name
- id: script
  doc: bash script that contains the commands to obtain and process the data
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ggd
- make-recipe
