version 1.0

task CheckComparateDesignFilepy {
  input {
    File? design
    Int? comp_num
    File? name_log_file
    String check_usersupplied_file
  }
  command <<<
    check_comparate_design_file_py \
      ~{check_usersupplied_file} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(comp_num) then ("--compNum " +  '"' + comp_num + '"') else ""} \
      ~{if defined(name_log_file) then ("--out " +  '"' + name_log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    design: "Input Design File. See BASE User Guide for formatting\\nhelp [REQUIRED]"
    comp_num: "Number of comparates"
    name_log_file: "Name of log file that checks design file"
    check_usersupplied_file: "Check user-supplied Pre-Bayesian design file for correct formatting and"
  }
  output {
    File out_stdout = stdout()
  }
}