version 1.0

task DropletutilsemptydropsR {
  input {
    File? input_object_file
    String? lower
    Int? nite_rs
    String? test_ambient
    String? ignore
    String? retain
    String? filter_empty
    String? filter_fdr
    File? output_text_file
    File? output_object_file
  }
  command <<<
    dropletutils_empty_drops_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(nite_rs) then ("--niters " +  '"' + nite_rs + '"') else ""} \
      ~{if defined(test_ambient) then ("--test-ambient " +  '"' + test_ambient + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(retain) then ("--retain " +  '"' + retain + '"') else ""} \
      ~{if defined(filter_empty) then ("--filter-empty " +  '"' + filter_empty + '"') else ""} \
      ~{if defined(filter_fdr) then ("--filter-fdr " +  '"' + filter_fdr + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R SingleCellExperiment object can be found."
    lower: "A numeric scalar specifying the lower bound on the total UMI count, at or below which all barcodes are assumed to correspond to empty droplets."
    nite_rs: "An integer scalar specifying the number of iterations to use for the Monte Carlo p-value calculations."
    test_ambient: "A logical scalar indicating whether results should be returned for barcodes with totals less than or equal to lower."
    ignore: "A numeric scalar specifying the lower bound on the total UMI count, at or below which barcodes will be ignored."
    retain: "A numeric scalar specifying the threshold for the total UMI count above which all barcodes are assumed to contain cells."
    filter_empty: "Should barcodes estimated to have no cells be removed from the output object?"
    filter_fdr: "FDR filter for removal of barcodes with no cells"
    output_text_file: "File name of text file in which to store output data frame."
    output_object_file: "File name in which to store serialized SingleCellExperiment object."
  }
  output {
    File out_stdout = stdout()
    File out_output_text_file = "${in_output_text_file}"
    File out_output_object_file = "${in_output_object_file}"
  }
}