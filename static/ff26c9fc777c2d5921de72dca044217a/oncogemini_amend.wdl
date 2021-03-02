version 1.0

task OncogeminiAmend {
  input {
    File? sample
    Boolean? clear
    String db
  }
  command <<<
    oncogemini amend \
      ~{db} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (clear) then "--clear" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0"
  }
  parameter_meta {
    sample: "New sample information file to load"
    clear: "Set all values in this column to NULL before loading."
    db: "The name of the database to be amended."
  }
  output {
    File out_stdout = stdout()
  }
}