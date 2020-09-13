version 1.0

task Model2model {
  input {
    File? _contains_model
    File? model_file
    File? track_mod
    File? query
  }
  command <<<
    model2model \
      ~{if defined(_contains_model) then ("-i " +  '"' + _contains_model + '"') else ""} \
      ~{if defined(model_file) then ("-model_file " +  '"' + model_file + '"') else ""} \
      ~{if defined(track_mod) then ("-trackmod " +  '"' + track_mod + '"') else ""} \
      ~{if defined(query) then ("-query " +  '"' + query + '"') else ""}
  >>>
  parameter_meta {
    _contains_model: ", which contains a MODEL, or"
    model_file: ", where file contains any model structure, or"
    track_mod: ",file2,..., for a multitrack model, or"
    query: "for a Smith and Waterman query model.\\n-modelfile model_file             required\\n[-modelguide seq_file]            guide sequence\\n-db model_file [-db model_file]*     one or more modes\\n[-dbguide seq_file [-db seq_file]]*     guide sequences\\n[-id seqid]*                      one or more sequence IDs"
  }
  output {
    File out_stdout = stdout()
  }
}