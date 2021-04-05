version 1.0

task SpringModelAllpy {
  input {
    Int? pairs
    File? hhr_index
    File? hhr_database
    File? index
    File? database
    String? cross
    File? log
    File? output_path
    String? w_energy
    Int? min_score
    Int? max_tries
    Int? max_clashes
    String? show_template
    String? zipped
  }
  command <<<
    spring_model_all_py \
      ~{if defined(pairs) then ("--pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(hhr_index) then ("--hhr_index " +  '"' + hhr_index + '"') else ""} \
      ~{if defined(hhr_database) then ("--hhr_database " +  '"' + hhr_database + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(cross) then ("--cross " +  '"' + cross + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(output_path) then ("--outputpath " +  '"' + output_path + '"') else ""} \
      ~{if defined(w_energy) then ("--wenergy " +  '"' + w_energy + '"') else ""} \
      ~{if defined(min_score) then ("--minscore " +  '"' + min_score + '"') else ""} \
      ~{if defined(max_tries) then ("--maxtries " +  '"' + max_tries + '"') else ""} \
      ~{if defined(max_clashes) then ("--maxclashes " +  '"' + max_clashes + '"') else ""} \
      ~{if defined(show_template) then ("--showtemplate " +  '"' + show_template + '"') else ""} \
      ~{if defined(zipped) then ("--zipped " +  '"' + zipped + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0"
  }
  parameter_meta {
    pairs: "Interaction table e.g. from min-Z evaluation\\n(2-columns)"
    hhr_index: "HHR Index database file (ffindex)"
    hhr_database: "HHR Database file (ffdata)"
    index: "PDB Database Index file (ffindex)"
    database: "PDB Database file (ffdata)"
    cross: "PDB Cross Reference"
    log: "Log file"
    output_path: "Path to output directory"
    w_energy: "Weight Energy term"
    min_score: "Minimum min-Z score threshold"
    max_tries: "Maximum number of templates"
    max_clashes: "Maximum fraction of clashes"
    show_template: "Add reference template to model structure"
    zipped: "Zipped extension in PDB Database\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}