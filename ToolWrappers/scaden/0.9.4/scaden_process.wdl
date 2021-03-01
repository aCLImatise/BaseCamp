version 1.0

task ScadenProcess {
  input {
    File? processed_path
    Float? var_cut_off
    String training_dataset_to_be_processed
  }
  command <<<
    scaden process \
      ~{training_dataset_to_be_processed} \
      ~{if defined(processed_path) then ("--processed_path " +  '"' + processed_path + '"') else ""} \
      ~{if defined(var_cut_off) then ("--var_cutoff " +  '"' + var_cut_off + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    processed_path: "Path of processed file. Must end with .h5ad"
    var_cut_off: "Filter out genes with a variance less than the\\nspecified cutoff. A low cutoff is recommended,this\\nshould only remove genes that are obviously\\nuninformative."
    training_dataset_to_be_processed: ""
  }
  output {
    File out_stdout = stdout()
  }
}