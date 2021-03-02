version 1.0

task PapaaAlternativeGenesPathwaymapperpy {
  input {
    File? classifier_decisions
    File? genes
    File? path_genes
    File? filename_mut
    File? filename_sample
    Boolean? copy_number
    File? filename_copy_gain
    String _filenamecopyloss_filenamecopyloss
  }
  command <<<
    papaa_alternative_genes_pathwaymapper_py \
      ~{_filenamecopyloss_filenamecopyloss} \
      ~{if defined(classifier_decisions) then ("--classifier_decisions " +  '"' + classifier_decisions + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(path_genes) then ("--path_genes " +  '"' + path_genes + '"') else ""} \
      ~{if defined(filename_mut) then ("--filename_mut " +  '"' + filename_mut + '"') else ""} \
      ~{if defined(filename_sample) then ("--filename_sample " +  '"' + filename_sample + '"') else ""} \
      ~{if (copy_number) then "--copy_number" else ""} \
      ~{if defined(filename_copy_gain) then ("--filename_copy_gain " +  '"' + filename_copy_gain + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    classifier_decisions: "string of the location of classifier decisions file\\nwith predictions/scores"
    genes: "string of the genes to extract or genelist file"
    path_genes: "pathway gene list file"
    filename_mut: "Filename of sample/gene mutations to use in model"
    filename_sample: "Filename of patient/samples to use in model"
    copy_number: "optional flag to include copy number info in pathway"
    filename_copy_gain: "Filename of copy number gain\\n"
    _filenamecopyloss_filenamecopyloss: "--filename_copy_loss FILENAME_COPY_LOSS"
  }
  output {
    File out_stdout = stdout()
  }
}