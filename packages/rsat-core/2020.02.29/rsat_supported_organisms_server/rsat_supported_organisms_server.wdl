version 1.0

task RsatSupportedorganismsserver {
  input {
    Boolean? help
    Boolean? url
    String? return
    String? tax_on
    Boolean? depth
    String supported_organisms
    String jacques_dot_van_helden_at_univ_am_udot_fr
    String genomes
  }
  command <<<
    rsat supported_organisms_server \
      ~{supported_organisms} \
      ~{jacques_dot_van_helden_at_univ_am_udot_fr} \
      ~{genomes} \
      ~{if (help) then "-help" else ""} \
      ~{if (url) then "-url" else ""} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""} \
      ~{if defined(tax_on) then ("-taxon " +  '"' + tax_on + '"') else ""} \
      ~{if (depth) then "-depth" else ""}
  >>>
  parameter_meta {
    help: "(must be first argument) display options"
    url: "Specify the URL of the remote RSAT server.\\nDefault: http://rsat-tagc.univ-mrs.fr/rsat/\\nThe option -url can be combined with the option\\n-taxon in order to obtain the list of organisms\\nsupported on the main RSAT server, before downloading\\nthem.\\nExamples:\\nsupported-organisms-server -taxon Fungi\\n-server http://rsat-tagc.univ-mrs.fr/rsat/\\nsupported-organisms-server -taxon Metazoa\\n-server http://rsat.sb-roscoff.fr/\\nSelect additional output fields:\\nsupported-organisms-server -taxon Viridiplantae\\n-return last_update,ID,taxonomy\\n-server http://floresta.eead.csic.es/rsat/\\nChoose a specific taxon:\\nsupported-organisms-server -taxon Archaea\\n-server http://embnet.ccg.unam.mx/rsa-tools\\nRestrict taxon depth:\\nsupported-organisms-server -taxon Bacteria\\n-depth 5 -server http://embnet.ccg.unam.mx/rsa-tools"
    return: "fields\\nsupported: ID,name,taxid,source,last_update,nb,seq_format,up_from,up_to,taxonomy,data,genome,genome_assembly,genome_version,download_date,variant_available,variant_source,path_to_variant_files,blast_available"
    tax_on: "Only returns organisms belonging to a selected taxon."
    depth: "#\\nDepth for exploring the taxonomic tree. When the value\\ndiffers from 0, the program only returns one\\n\\\"representative\\\" organism per taxon of the specified\\ndepth.\\nThis option is convenient to select a non-redundant set\\nof species. Note that the biological relevance of the\\nresult strongly depends on the annotation of the\\ntaxonomy in the original database from whichb RSAT\\ngenomes were downloaded.\\nPositive value indicate that the tree should be\\ntraversed from root to leaves.\\nNegative values indicate that the tree should be\\ntraversed from leaves to root. Beware: level 0 is the\\nspecies. Level -1 this corresponds to the lowest level\\nof the taxonomy.\\nAlso note that the depth of the taxonomic annotations\\nvary along branches, so that positive values will give\\ndifferent results from negative values.\\n"
    supported_organisms: "USAGE"
    jacques_dot_van_helden_at_univ_am_udot_fr: "DESCRIPTION"
    genomes: "OPTIONS"
  }
  output {
    File out_stdout = stdout()
  }
}