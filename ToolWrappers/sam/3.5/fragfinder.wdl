version 1.0

task Fragfinder {
  input {
    File? _contains_model
    File? model_file
    File? track_mod
    File? query
    File? model_library
    File? db
    String? first_sequence
    Int? fra_glen
    Boolean? num_per_match
  }
  command <<<
    fragfinder \
      ~{if defined(_contains_model) then ("-i " +  '"' + _contains_model + '"') else ""} \
      ~{if defined(model_file) then ("-model_file " +  '"' + model_file + '"') else ""} \
      ~{if defined(track_mod) then ("-trackmod " +  '"' + track_mod + '"') else ""} \
      ~{if defined(query) then ("-query " +  '"' + query + '"') else ""} \
      ~{if defined(model_library) then ("-modellibrary " +  '"' + model_library + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(first_sequence) then ("-firstsequence " +  '"' + first_sequence + '"') else ""} \
      ~{if defined(fra_glen) then ("-fraglen " +  '"' + fra_glen + '"') else ""} \
      ~{if (num_per_match) then "-numpermatch" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _contains_model: ", which contains a MODEL, or"
    model_file: ", where file contains any model structure, or"
    track_mod: ",file2,..., for a multitrack model, or"
    query: "for a Smith and Waterman query model."
    model_library: ",...           or ...."
    db: "Database to search for fragments.  Required."
    first_sequence: "Target single-sequence. Optional.\\nif present, will be first aligned sequence"
    fra_glen: "Fragment length [10]"
    num_per_match: "#   Number of best fragments per bin [5]"
  }
  output {
    File out_stdout = stdout()
  }
}