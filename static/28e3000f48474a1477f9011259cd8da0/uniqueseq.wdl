version 1.0

task Uniqueseq {
  input {
    String? db
    String? align_file
    String? train
    String? verbose
    String? percentid
    String? option
    String run_name
  }
  command <<<
    uniqueseq \
      ~{run_name} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(align_file) then ("-alignfile " +  '"' + align_file + '"') else ""} \
      ~{if defined(train) then ("-train " +  '"' + train + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(percentid) then ("-percentid " +  '"' + percentid + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    db: "[-db seq_filen]*   one or more sequence files OR"
    align_file: "a sequence alignment file"
    train: "training sequence file"
    verbose: "or 1                 provide more (1) or less (0) output"
    percentid: "fraction identical in alignment to drop (1.0)"
    option: ""
    run_name: "required"
  }
}