version 1.0

task TripailleAnalysisLoadGff3 {
  input {
    String? organism
    Int? organism_id
    String? analysis
    Int? analysis_id
    String? import_mode
    File? target_organism
    Int? target_organism_id
    File? target_type
    Boolean? target_create
    Int? start_line
    String? landmark_type
    String? alt_id_attr
    Boolean? create_organism
    String? re_mrna
    String? re_protein
    String? job_name
    Boolean? no_wait
    String gff
  }
  command <<<
    tripaille analysis load_gff3 \
      ~{gff} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(analysis) then ("--analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{if defined(import_mode) then ("--import_mode " +  '"' + import_mode + '"') else ""} \
      ~{if defined(target_organism) then ("--target_organism " +  '"' + target_organism + '"') else ""} \
      ~{if defined(target_organism_id) then ("--target_organism_id " +  '"' + target_organism_id + '"') else ""} \
      ~{if defined(target_type) then ("--target_type " +  '"' + target_type + '"') else ""} \
      ~{if (target_create) then "--target_create" else ""} \
      ~{if defined(start_line) then ("--start_line " +  '"' + start_line + '"') else ""} \
      ~{if defined(landmark_type) then ("--landmark_type " +  '"' + landmark_type + '"') else ""} \
      ~{if defined(alt_id_attr) then ("--alt_id_attr " +  '"' + alt_id_attr + '"') else ""} \
      ~{if (create_organism) then "--create_organism" else ""} \
      ~{if defined(re_mrna) then ("--re_mrna " +  '"' + re_mrna + '"') else ""} \
      ~{if defined(re_protein) then ("--re_protein " +  '"' + re_protein + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: "Organism common name or abbreviation"
    organism_id: "Organism ID"
    analysis: "Analysis name"
    analysis_id: "Analysis ID"
    import_mode: "Import mode (add_only=existing features won't\\nbe touched, update=existing features will be\\nupdated and obsolete attributes kept)')\\n[default: update]"
    target_organism: "In case of Target attribute in the GFF3,\\nchoose the organism abbreviation or common\\nname to which target sequences belong. Select\\nthis only if target sequences belong to a\\ndifferent organism than the one specified with\\n--organism-id. And only choose an organism\\nhere if all of the target sequences belong to\\nthe same species. If the targets in the GFF\\nfile belong to multiple different species then\\nthe organism must be specified using the\\n'target_organism=genus:species' attribute in\\nthe GFF file.')"
    target_organism_id: "In case of Target attribute in the GFF3,\\nchoose the organism ID to which target\\nsequences belong. Select this only if target\\nsequences belong to a different organism than\\nthe one specified with --organism-id. And only\\nchoose an organism here if all of the target\\nsequences belong to the same species. If the\\ntargets in the GFF file belong to multiple\\ndifferent species then the organism must be\\nspecified using the\\n'target_organism=genus:species' attribute in\\nthe GFF file.')"
    target_type: "In case of Target attribute in the GFF3, if\\nthe unique name for a target sequence is not\\nunique (e.g. a protein and an mRNA have the\\nsame name) then you must specify the type for\\nall targets in the GFF file. If the targets\\nare of different types then the type must be\\nspecified using the 'target_type=type'\\nattribute in the GFF file. This must be a\\nvalid Sequence Ontology (SO) term.')"
    target_create: "In case of Target attribute in the GFF3, if\\nthe target feature cannot be found, create one\\nusing the organism and type specified above,\\nor using the 'target_organism' and\\n'target_type' fields specified in the GFF\\nfile. Values specified in the GFF file take\\nprecedence over those specified above.')"
    start_line: "The line in the GFF file where importing\\nshould start"
    landmark_type: "A Sequence Ontology type for the landmark\\nsequences in the GFF fie (e.g. 'chromosome')."
    alt_id_attr: "When ID attribute is absent, specify which\\nother attribute can uniquely identify the\\nfeature."
    create_organism: "Create organisms when encountering organism\\nattribute (these lines will be skip otherwise)"
    re_mrna: "Regular expression for the mRNA name"
    re_protein: "Replacement string for the protein name"
    job_name: "Name of the job"
    no_wait: "Do not wait for job to complete"
    gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}