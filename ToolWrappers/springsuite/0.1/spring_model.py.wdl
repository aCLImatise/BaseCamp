version 1.0

task SpringModelpy {
  input {
    File? a_hhr
    File? b_hhr
    File? index
    String? database
    String? cross
    File? output_model_file
    String? w_energy
    Int? min_score
    Int? max_tries
    Int? max_clashes
    String? show_template
  }
  command <<<
    spring_model_py \
      ~{if defined(a_hhr) then ("--a_hhr " +  '"' + a_hhr + '"') else ""} \
      ~{if defined(b_hhr) then ("--b_hhr " +  '"' + b_hhr + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(cross) then ("--cross " +  '"' + cross + '"') else ""} \
      ~{if defined(output_model_file) then ("--output " +  '"' + output_model_file + '"') else ""} \
      ~{if defined(w_energy) then ("--wenergy " +  '"' + w_energy + '"') else ""} \
      ~{if defined(min_score) then ("--minscore " +  '"' + min_score + '"') else ""} \
      ~{if defined(max_tries) then ("--maxtries " +  '"' + max_tries + '"') else ""} \
      ~{if defined(max_clashes) then ("--maxclashes " +  '"' + max_clashes + '"') else ""} \
      ~{if defined(show_template) then ("--showtemplate " +  '"' + show_template + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/springsuite:0.1--pyh3252c3a_0"
  }
  parameter_meta {
    a_hhr: "First HHR target file result"
    b_hhr: "Second HHR target file result"
    index: "PDB Database Index file (ffindex)"
    database: "PDB Database files (ffdata)"
    cross: "PDB Cross Reference"
    output_model_file: "Output model file"
    w_energy: "Weight Energy term"
    min_score: "Minimum min-Z score threshold"
    max_tries: "Maximum number of templates"
    max_clashes: "Maximum fraction of clashes"
    show_template: "Add reference template to model structure\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_model_file = "${in_output_model_file}"
  }
}