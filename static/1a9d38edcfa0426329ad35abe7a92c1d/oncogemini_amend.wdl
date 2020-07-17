version 1.0

task OncogeminiAmend {
  input {
    String? sample
    Boolean? clear
    String db
  }
  command <<<
    oncogemini amend \
      ~{db} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{true="--clear" false="" clear}
  >>>
  parameter_meta {
    sample: "New sample information file to load"
    clear: "Set all values in this column to NULL before loading."
    db: "The name of the database to be amended."
  }
}