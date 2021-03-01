version 1.0

task TripailleAnalysisLoadFasta {
  input {
    String? organism
    Int? organism_id
    String? analysis
    Int? analysis_id
    String? sequence_type
    String? re_name
    String? re_unique_name
    String? db_ext_id
    String? re_accession
    String? rel_subject_re
    String? rel_subject_type
    String? method
    String? match_type
    String? job_name
    Boolean? no_wait
    String db
  }
  command <<<
    tripaille analysis load_fasta \
      ~{db} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(analysis) then ("--analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{if defined(sequence_type) then ("--sequence_type " +  '"' + sequence_type + '"') else ""} \
      ~{if defined(re_name) then ("--re_name " +  '"' + re_name + '"') else ""} \
      ~{if defined(re_unique_name) then ("--re_uniquename " +  '"' + re_unique_name + '"') else ""} \
      ~{if defined(db_ext_id) then ("--db_ext_id " +  '"' + db_ext_id + '"') else ""} \
      ~{if defined(re_accession) then ("--re_accession " +  '"' + re_accession + '"') else ""} \
      ~{if defined(rel_subject_re) then ("--rel_subject_re " +  '"' + rel_subject_re + '"') else ""} \
      ~{if defined(rel_subject_type) then ("--rel_subject_type " +  '"' + rel_subject_type + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(match_type) then ("--match_type " +  '"' + match_type + '"') else ""} \
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
    sequence_type: "Sequence type  [default: contig]"
    re_name: "Regular expression for the name"
    re_unique_name: "Regular expression for the unique name"
    db_ext_id: "External DB ID"
    re_accession: "Regular expression for the accession from external"
    rel_subject_re: "Relation subject regular expression (used to\\nextract id of related entity)"
    rel_subject_type: "Relation subject type (must match already loaded\\ndata, e.g. mRNA)"
    method: "Insertion method (insert, update or insup,\\ndefault=insup (Insert and Update))  [default:\\ninsup]"
    match_type: "Match type for already loaded features (name or\\nuniquename; default=uniquename; used for \\\"Update\\nonly\\\" or \\\"Insert and update\\\" methods)'  [default:\\nuniquename]"
    job_name: "Name of the job"
    no_wait: "Do not wait for job to complete"
    db: "--rel_type TEXT          Relation type (part_of or derives_from)"
  }
  output {
    File out_stdout = stdout()
  }
}