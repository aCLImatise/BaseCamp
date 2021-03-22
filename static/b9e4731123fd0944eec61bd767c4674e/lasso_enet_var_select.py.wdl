version 1.0

task LassoEnetVarSelectpy {
  input {
    String? a
    File? r_script
    String? input_dataset_wide
    File? design
    String? id
    String? group
    String? alpha
    File? coefficients
    File? flags
    File? plots
  }
  command <<<
    lasso_enet_var_select_py \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(r_script) then ("--rscript " +  '"' + r_script + '"') else ""} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(coefficients) then ("--coefficients " +  '"' + coefficients + '"') else ""} \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""} \
      ~{if defined(plots) then ("--plots " +  '"' + plots + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  parameter_meta {
    a: "[-c COEFFICIENTS] [-f FLAGS]"
    r_script: "Full path to R script if not using package version"
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Name of the column with groups."
    alpha: "Alpha Value."
    coefficients: "Path of en coefficients file."
    flags: "Path of en flag file."
    plots: "Path of en coefficients file.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}