version 1.0

task Hmmscore {
  input {
    File? db
    Int? calibrate
    Int? track_prior
    File? track_mod
    File? model_library
    String? query
    String? option
    String run_name
  }
  command <<<
    hmmscore \
      ~{run_name} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(calibrate) then ("-calibrate " +  '"' + calibrate + '"') else ""} \
      ~{if defined(track_prior) then ("-trackprior " +  '"' + track_prior + '"') else ""} \
      ~{if defined(track_mod) then ("-trackmod " +  '"' + track_mod + '"') else ""} \
      ~{if defined(model_library) then ("-modellibrary " +  '"' + model_library + '"') else ""} \
      ~{if defined(query) then ("-query " +  '"' + query + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "[-db seq_filen]*     one or more sequence files"
    calibrate: "or calibrate E-values"
    track_prior: ",<prior2>..   Dirichlets for calibration"
    track_mod: ",file2,...         or ...."
    model_library: ",...           or ...."
    query: "&W_query_sequence         required ...."
    option: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}