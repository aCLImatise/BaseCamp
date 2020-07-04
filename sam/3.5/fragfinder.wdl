version 1.0

task Fragfinder {
  input {
    File? track_mod
    File? model_library
    String? db
    String? first_sequence
    Int? fra_glen
    Boolean? num_per_match
  }
  command <<<
    fragfinder \
      ~{if defined(track_mod) then ("-trackmod " +  '"' + track_mod + '"') else ""} \
      ~{if defined(model_library) then ("-modellibrary " +  '"' + model_library + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(first_sequence) then ("-firstsequence " +  '"' + first_sequence + '"') else ""} \
      ~{if defined(fra_glen) then ("-fraglen " +  '"' + fra_glen + '"') else ""} \
      ~{true="-numpermatch" false="" num_per_match}
  >>>
  parameter_meta {
    track_mod: ",file2,...         or ...."
    model_library: ",...           or ...."
    db: "Database to search for fragments.  Required. "
    first_sequence: "Target single-sequence. Optional.  if present, will be first aligned sequence"
    fra_glen: "Fragment length [10]"
    num_per_match: "#   Number of best fragments per bin [5]"
  }
}