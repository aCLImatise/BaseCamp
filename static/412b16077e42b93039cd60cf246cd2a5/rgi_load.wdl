version 1.0

task RgiLoad {
  input {
    File? card_json
    String? card_annotation
    String? wildcard_annotation
    File? wildcard_index
    String? wildcard_version
    String? baits_annotation
    File? baits_index
    String? km_er_database
    File? amr_km_ers
    Int? km_er_size
    Boolean? local
    Boolean? debug
  }
  command <<<
    rgi load \
      ~{if defined(card_json) then ("--card_json " +  '"' + card_json + '"') else ""} \
      ~{if defined(card_annotation) then ("--card_annotation " +  '"' + card_annotation + '"') else ""} \
      ~{if defined(wildcard_annotation) then ("--wildcard_annotation " +  '"' + wildcard_annotation + '"') else ""} \
      ~{if defined(wildcard_index) then ("--wildcard_index " +  '"' + wildcard_index + '"') else ""} \
      ~{if defined(wildcard_version) then ("--wildcard_version " +  '"' + wildcard_version + '"') else ""} \
      ~{if defined(baits_annotation) then ("--baits_annotation " +  '"' + baits_annotation + '"') else ""} \
      ~{if defined(baits_index) then ("--baits_index " +  '"' + baits_index + '"') else ""} \
      ~{if defined(km_er_database) then ("--kmer_database " +  '"' + km_er_database + '"') else ""} \
      ~{if defined(amr_km_ers) then ("--amr_kmers " +  '"' + amr_km_ers + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer_size " +  '"' + km_er_size + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    card_json: "must be a card database json file"
    card_annotation: "annotated reference FASTA"
    wildcard_annotation: "annotated reference FASTA"
    wildcard_index: "wildcard index file (index-for-model-sequences.txt)"
    wildcard_version: "specify variants version used"
    baits_annotation: "annotated reference FASTA"
    baits_index: "baits index file (baits-probes-with-sequence-info.txt)"
    km_er_database: "json of kmer database"
    amr_km_ers: "txt file of all amr kmers"
    km_er_size: "kmer size if loading kmer files"
    local: "use local database (default: uses database in\\nexecutable directory)"
    debug: "debug mode"
  }
  output {
    File out_stdout = stdout()
  }
}