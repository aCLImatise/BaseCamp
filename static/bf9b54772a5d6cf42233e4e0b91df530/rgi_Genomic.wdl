version 1.0

task RgiGenomic {
  input {
    String database
    String load
    String clean
    String galaxy
    String genomic
    String main
    String tab
    String parser
    String heat_map
    String meta_genomic
    String bwt
    String tm
    String annotations
    String card_annotation
    String wildcard_annotation
    String baits_annotation
    String remove_duplicates
    String km_er_build
    String km_er_query
  }
  command <<<
    rgi Genomic \
      ~{database} \
      ~{load} \
      ~{clean} \
      ~{galaxy} \
      ~{genomic} \
      ~{main} \
      ~{tab} \
      ~{parser} \
      ~{heat_map} \
      ~{meta_genomic} \
      ~{bwt} \
      ~{tm} \
      ~{annotations} \
      ~{card_annotation} \
      ~{wildcard_annotation} \
      ~{baits_annotation} \
      ~{remove_duplicates} \
      ~{km_er_build} \
      ~{km_er_query}
  >>>
  parameter_meta {
    database: "---------------------------------------------------------------------------------------"
    load: "Loads CARD database, annotations and k-mer database"
    clean: "Removes BLAST databases and temporary files"
    galaxy: "Galaxy project wrapper"
    genomic: "---------------------------------------------------------------------------------------"
    main: "Runs rgi application"
    tab: "Creates a Tab-delimited from rgi results"
    parser: "Creates categorical JSON files RGI wheel visualization"
    heat_map: "Heatmap for multiple analysis"
    meta_genomic: "---------------------------------------------------------------------------------------"
    bwt: "Align reads to CARD and in silico predicted allelic variants (beta)"
    tm: "Baits Melting Temperature"
    annotations: "---------------------------------------------------------------------------------------"
    card_annotation: "Create fasta files with annotations from card.json"
    wildcard_annotation: "Create fasta files with annotations from variants"
    baits_annotation: "Create fasta files with annotations from baits (experimental)"
    remove_duplicates: "Removes duplicate sequences (experimental)"
    km_er_build: "Build AMR specific k-mers database used for pathogen of origin (beta)"
    km_er_query: "Query sequences against AMR k-mers database to predict pathogen of origin (beta)"
  }
  output {
    File out_stdout = stdout()
  }
}