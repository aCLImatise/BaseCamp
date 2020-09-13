version 1.0

task Sc3sc3calcbiologyR {
  input {
    File? input_object_file
    File? output_text_file
    Int? ks
    String? regime
    File? output_object_file
  }
  command <<<
    sc3_sc3_calc_biology_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(ks) then ("--ks " +  '"' + ks + '"') else ""} \
      ~{if defined(regime) then ("--regime " +  '"' + regime + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a SC3 'SingleCellExperiment' object has been stored after kmeans clustering."
    output_text_file: "A text file file to write marker matrices to. A 'k' column will defined from which value of 'k' the markers are derived."
    ks: "A comma-separated string or single value representing the number of clusters k to be used for SC3 clustering."
    regime: "defines what biological analysis to perform. \\\"marker\\\" for marker genes, \\\"de\\\" for differentiall expressed genes and \\\"outl\\\" for outlier cells."
    output_object_file: "File name for R object of type 'SingleCellExperiment' from SC3 in which to store the consensus matrix."
  }
  output {
    File out_stdout = stdout()
    File out_output_text_file = "${in_output_text_file}"
    File out_output_object_file = "${in_output_object_file}"
  }
}