class: CommandLineTool
id: rsat_supported_organisms.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean?
  inputBinding:
    prefix: -help
- id: in_format
  doc: "format\nsupported: tab,tree,html_tree,newick\ntab: tab-delimited text format,\
    \ with one row per\norganism and one column per field (see option\n-return).\n\
    tree: a textual representation of the tree, with\nhyphen-based indentation to\
    \ indicate taxon depth.\nhtml_tree: same as tree, but wiht HTML tags (organism\n\
    names in italics, taxon names in bold)."
  type: string?
  inputBinding:
    prefix: -format
- id: in_return
  doc: "fields\nsupported: ID,name,taxid,source,last_update,nb,seq_format,up_from,up_to,taxonomy,data,genome,genome_assembly,genome_version,download_date,variant_available,variant_source,path_to_variant_files,blast_available"
  type: string?
  inputBinding:
    prefix: -return
- id: in_tax_on
  doc: "Only returns organisms belonging to a selected taxon.\nExample:\nsupported-organisms\
    \ -taxon Enterobacteriaceae"
  type: string?
  inputBinding:
    prefix: -taxon
- id: in_group
  doc: "Only returns organisms belonging to a selected\n\"taxonomic\" group.\nSupported\
    \ groups (as defined by EnsemblGenomes):\nFungi\nProkaryotes\nBacteria\nArchaea\n\
    Protists\nMetazoa\nPlants\nNote that some of the \"groups\" correspond to a specific\n\
    taxon defined by its systematic name (e.g. Metazoa,\nFungi) or by its common name\
    \ (Plants, Prokaryotes),\nwhilst others are defined according ot the common usage\n\
    (e.g. Protists) but do not properly speaking correspond\nto a taxonomic group.\
    \ These non-taxonomic groups are\nconverted as follows:\n- \"Protists\" is converted\
    \ to\n\"(Eukaryota NOT (Metazoa OR Fungi)) OR EnsemblProtists\"\n- \"Plants\"\
    \ is converted to Viridiplantae\n- \"Prokaryotes\" is converted to \"Bacteria\
    \ OR Archaea\"\nExample:\nsupported-organisms -taxon Protists\nsupported-organisms\
    \ -taxon Prokaryotes"
  type: string?
  inputBinding:
    prefix: -group
- id: in_source
  doc: "Only return organisms from a user-selected source(s).\nThis argument can be\
    \ used iteratively to accept\nmultiple sources.\nExample:\nsupported-organisms\
    \ -source ensembl\nsupported-organisms -source ensemblgenomes\nsupported-organisms\
    \ -source ensembl -source ensemblgenomes"
  type: string?
  inputBinding:
    prefix: -source
- id: in_depth
  doc: "#\nDepth for exploring the taxonomic tree. When the value\ndiffers from 0,\
    \ the program only returns one\n\"representative\" organism per taxon of the specified\n\
    depth.\nThis option is convenient to select a non-redundant set\nof species. Note\
    \ that the biological relevance of the\nresult strongly depends on the annotation\
    \ of the\ntaxonomy in the original database from whichb RSAT\ngenomes were downloaded.\n\
    Positive value indicate that the tree should be\ntraversed from root to leaves.\n\
    Negative values indicate that the tree should be\ntraversed from leaves to root.\
    \ Beware: level 0 is the\nspecies. Level -1 this corresponds to the lowest level\n\
    of the taxonomy.\nAlso note that the depth of the taxonomic annotations\nvary\
    \ along branches, so that positive values will give\ndifferent results from negative\
    \ values."
  type: boolean?
  inputBinding:
    prefix: -depth
- id: in_unique_species
  doc: "Select at most one organism per species. This option\naims at avoiding to\
    \ be submerged by hundreds of\nstrains sequenced for the same species\n(e.g. Escherichia\
    \ coli).\nSince the current annotations do not contain any\nexplicit mention of\
    \ the taxonomic depth in the\ntaxonomic classification, we use a somewhat pedestrial\n\
    criterion to identify species, by considering the\nfirst word of the organism\
    \ name as the genus, and the\nsecond name as the species."
  type: boolean?
  inputBinding:
    prefix: -unique_species
- id: in_unique_genus
  doc: "Select at most one organism per genus. See option\n-unique_species for the\
    \ details."
  type: boolean?
  inputBinding:
    prefix: -unique_genus
- id: in_server
  doc: "the list of organisms supported on a remote\nRSAT server, via the Web services\
    \ interface\n(http://www.rsat.eu/web_services/RSATWS.wsdl).\nThe option -server\
    \ can be combined with the option\n-taxon in order to obtain the list of organisms\n\
    supported on the main RSAT server, before downloading\nthem.\nEx:\nsupported-organisms\
    \ -taxon Fungi -server\nAn alternative server RSAT server can be selected by\n\
    specifying the URL of the Web server.\nsupported-organisms -server http://embnet.ccg.unam.mx/rsa-tools\n"
  type: string?
  inputBinding:
    prefix: -server
- id: in_supported_organisms
  doc: USAGE
  type: string
  inputBinding:
    position: 0
- id: in_jacques_dot_van_helden_dot_fr
  doc: "Management of taxonomic tree: \nRekin's Janky (Rekins.Janky@vib.be)."
  type: string
  inputBinding:
    position: 0
- id: in_genomes
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- supported-organisms
