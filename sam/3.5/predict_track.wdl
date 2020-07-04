version 1.0

task PredictTrack {
  input {
    String? ehl_model_alphabet
    Boolean? alphabet_def
    String? option
    String run_name
  }
  command <<<
    predict_track \
      ~{run_name} \
      ~{if defined(ehl_model_alphabet) then ("-a " +  '"' + ehl_model_alphabet + '"') else ""} \
      ~{true="-alphabet_def" false="" alphabet_def} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    ehl_model_alphabet: ",EHL                   Model alphabet and alphabet to predict OR"
    alphabet_def: "\"malpha - palpha lets' Model alphabet and alphabet to predict (required)"
    option: ""
    run_name: ""
  }
}