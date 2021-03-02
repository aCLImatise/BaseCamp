version 1.0

task PapaaMapMutationClasspy {
  input {
    File? classifier_decisions
    File? path_genes
    Boolean? copy_number
    File? filename_copy_loss
    File? filename_copy_gain
    File? filename_raw_mut
  }
  command <<<
    papaa_map_mutation_class_py \
      ~{if defined(classifier_decisions) then ("--classifier_decisions " +  '"' + classifier_decisions + '"') else ""} \
      ~{if defined(path_genes) then ("--path_genes " +  '"' + path_genes + '"') else ""} \
      ~{if (copy_number) then "--copy_number" else ""} \
      ~{if defined(filename_copy_loss) then ("--filename_copy_loss " +  '"' + filename_copy_loss + '"') else ""} \
      ~{if defined(filename_copy_gain) then ("--filename_copy_gain " +  '"' + filename_copy_gain + '"') else ""} \
      ~{if defined(filename_raw_mut) then ("--filename_raw_mut " +  '"' + filename_raw_mut + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    classifier_decisions: "string of the location of classifier decision file\\nwith predictions or scores"
    path_genes: "pathway gene list file"
    copy_number: "optional flag to include copy number info in map"
    filename_copy_loss: "Filename of copy number loss"
    filename_copy_gain: "Filename of copy number gain"
    filename_raw_mut: "Filename of raw mut MAF\\n"
  }
  output {
    File out_stdout = stdout()
  }
}