class: CommandLineTool
id: rsat_supported_organisms_server.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean?
  inputBinding:
    prefix: -help
- id: in_url
  doc: "Specify the URL of the remote RSAT server.\nDefault: http://rsat-tagc.univ-mrs.fr/rsat/\n\
    The option -url can be combined with the option\n-taxon in order to obtain the\
    \ list of organisms\nsupported on the main RSAT server, before downloading\nthem.\n\
    Examples:\nsupported-organisms-server -taxon Fungi\n-server http://rsat-tagc.univ-mrs.fr/rsat/\n\
    supported-organisms-server -taxon Metazoa\n-server http://rsat.sb-roscoff.fr/\n\
    Select additional output fields:\nsupported-organisms-server -taxon Viridiplantae\n\
    -return last_update,ID,taxonomy\n-server http://floresta.eead.csic.es/rsat/\n\
    Choose a specific taxon:\nsupported-organisms-server -taxon Archaea\n-server http://embnet.ccg.unam.mx/rsa-tools\n\
    Restrict taxon depth:\nsupported-organisms-server -taxon Bacteria\n-depth 5 -server\
    \ http://embnet.ccg.unam.mx/rsa-tools"
  type: boolean?
  inputBinding:
    prefix: -url
- id: in_return
  doc: "fields\nsupported: ID,name,taxid,source,last_update,nb,seq_format,up_from,up_to,taxonomy,data,genome,genome_assembly,genome_version,download_date,variant_available,variant_source,path_to_variant_files,blast_available"
  type: string?
  inputBinding:
    prefix: -return
- id: in_tax_on
  doc: Only returns organisms belonging to a selected taxon.
  type: string?
  inputBinding:
    prefix: -taxon
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
    \ values.\n"
  type: boolean?
  inputBinding:
    prefix: -depth
- id: in_supported_organisms
  doc: USAGE
  type: string
  inputBinding:
    position: 0
- id: in_jacques_dot_van_helden_at_univ_am_udot_fr
  doc: DESCRIPTION
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
- supported-organisms-server
