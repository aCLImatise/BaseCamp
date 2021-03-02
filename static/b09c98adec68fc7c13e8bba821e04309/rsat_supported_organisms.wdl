version 1.0

task RsatSupportedorganisms {
  input {
    Boolean? help
    String? format
    String? return
    String? tax_on
    String? group
    String? source
    Boolean? depth
    Boolean? unique_species
    Boolean? unique_genus
    String? server
    String supported_organisms
    String jacques_dot_van_helden_dot_fr
    String genomes
  }
  command <<<
    rsat supported_organisms \
      ~{supported_organisms} \
      ~{jacques_dot_van_helden_dot_fr} \
      ~{genomes} \
      ~{if (help) then "-help" else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""} \
      ~{if defined(tax_on) then ("-taxon " +  '"' + tax_on + '"') else ""} \
      ~{if defined(group) then ("-group " +  '"' + group + '"') else ""} \
      ~{if defined(source) then ("-source " +  '"' + source + '"') else ""} \
      ~{if (depth) then "-depth" else ""} \
      ~{if (unique_species) then "-unique_species" else ""} \
      ~{if (unique_genus) then "-unique_genus" else ""} \
      ~{if defined(server) then ("-server " +  '"' + server + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help: "(must be first argument) display options"
    format: "format\\nsupported: tab,tree,html_tree,newick\\ntab: tab-delimited text format, with one row per\\norganism and one column per field (see option\\n-return).\\ntree: a textual representation of the tree, with\\nhyphen-based indentation to indicate taxon depth.\\nhtml_tree: same as tree, but wiht HTML tags (organism\\nnames in italics, taxon names in bold)."
    return: "fields\\nsupported: ID,name,taxid,source,last_update,nb,seq_format,up_from,up_to,taxonomy,data,genome,genome_assembly,genome_version,download_date,variant_available,variant_source,path_to_variant_files,blast_available"
    tax_on: "Only returns organisms belonging to a selected taxon.\\nExample:\\nsupported-organisms -taxon Enterobacteriaceae"
    group: "Only returns organisms belonging to a selected\\n\\\"taxonomic\\\" group.\\nSupported groups (as defined by EnsemblGenomes):\\nFungi\\nProkaryotes\\nBacteria\\nArchaea\\nProtists\\nMetazoa\\nPlants\\nNote that some of the \\\"groups\\\" correspond to a specific\\ntaxon defined by its systematic name (e.g. Metazoa,\\nFungi) or by its common name (Plants, Prokaryotes),\\nwhilst others are defined according ot the common usage\\n(e.g. Protists) but do not properly speaking correspond\\nto a taxonomic group. These non-taxonomic groups are\\nconverted as follows:\\n- \\\"Protists\\\" is converted to\\n\\\"(Eukaryota NOT (Metazoa OR Fungi)) OR EnsemblProtists\\\"\\n- \\\"Plants\\\" is converted to Viridiplantae\\n- \\\"Prokaryotes\\\" is converted to \\\"Bacteria OR Archaea\\\"\\nExample:\\nsupported-organisms -taxon Protists\\nsupported-organisms -taxon Prokaryotes"
    source: "Only return organisms from a user-selected source(s).\\nThis argument can be used iteratively to accept\\nmultiple sources.\\nExample:\\nsupported-organisms -source ensembl\\nsupported-organisms -source ensemblgenomes\\nsupported-organisms -source ensembl -source ensemblgenomes"
    depth: "#\\nDepth for exploring the taxonomic tree. When the value\\ndiffers from 0, the program only returns one\\n\\\"representative\\\" organism per taxon of the specified\\ndepth.\\nThis option is convenient to select a non-redundant set\\nof species. Note that the biological relevance of the\\nresult strongly depends on the annotation of the\\ntaxonomy in the original database from whichb RSAT\\ngenomes were downloaded.\\nPositive value indicate that the tree should be\\ntraversed from root to leaves.\\nNegative values indicate that the tree should be\\ntraversed from leaves to root. Beware: level 0 is the\\nspecies. Level -1 this corresponds to the lowest level\\nof the taxonomy.\\nAlso note that the depth of the taxonomic annotations\\nvary along branches, so that positive values will give\\ndifferent results from negative values."
    unique_species: "Select at most one organism per species. This option\\naims at avoiding to be submerged by hundreds of\\nstrains sequenced for the same species\\n(e.g. Escherichia coli).\\nSince the current annotations do not contain any\\nexplicit mention of the taxonomic depth in the\\ntaxonomic classification, we use a somewhat pedestrial\\ncriterion to identify species, by considering the\\nfirst word of the organism name as the genus, and the\\nsecond name as the species."
    unique_genus: "Select at most one organism per genus. See option\\n-unique_species for the details."
    server: "the list of organisms supported on a remote\\nRSAT server, via the Web services interface\\n(http://www.rsat.eu/web_services/RSATWS.wsdl).\\nThe option -server can be combined with the option\\n-taxon in order to obtain the list of organisms\\nsupported on the main RSAT server, before downloading\\nthem.\\nEx:\\nsupported-organisms -taxon Fungi -server\\nAn alternative server RSAT server can be selected by\\nspecifying the URL of the Web server.\\nsupported-organisms -server http://embnet.ccg.unam.mx/rsa-tools\\n"
    supported_organisms: "USAGE"
    jacques_dot_van_helden_dot_fr: "Management of taxonomic tree: \\nRekin's Janky (Rekins.Janky@vib.be)."
    genomes: "OPTIONS"
  }
  output {
    File out_stdout = stdout()
  }
}