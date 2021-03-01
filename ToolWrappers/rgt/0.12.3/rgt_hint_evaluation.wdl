version 1.0

task RgthintEvaluation {
  input {
    File? tfbs_file
    File? footprint_file
    Int? footprint_name
    Int? footprint_type
    File? output_location
    Boolean? print_pr_curve
  }
  command <<<
    rgt_hint evaluation \
      ~{if defined(tfbs_file) then ("--tfbs-file " +  '"' + tfbs_file + '"') else ""} \
      ~{if defined(footprint_file) then ("--footprint-file " +  '"' + footprint_file + '"') else ""} \
      ~{if defined(footprint_name) then ("--footprint-name " +  '"' + footprint_name + '"') else ""} \
      ~{if defined(footprint_type) then ("--footprint-type " +  '"' + footprint_type + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if (print_pr_curve) then "--print-pr-curve" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tfbs_file: "A bed file containing all motif-predicted binding\\nsites (MPBSs).The values in the bed SCORE field will\\nbe used to rank the MPBSs.The extension must be\\n(.bed)."
    footprint_file: ",FILE2,FILE3,FILE4...\\nThe bed files containing the footprint predictions.The\\nextension must be (.bed)."
    footprint_name: ",NAME2,NAME3,NAME4...\\nThe name used to distinguish different footprint\\nfiles.The number of methods name must be consistent\\nwith that of footprint files"
    footprint_type: ",TYPE2,TYPE3,TYPE4...\\nThe methods type used to predicted the footprint.Must\\nbe SC (site centric) or SEG (segmentation approach)"
    output_location: "If set, HINT will print the receiver operating\\ncharacteristic curve."
    print_pr_curve: "If set, HINT will print the precision recall curve."
  }
  output {
    File out_stdout = stdout()
  }
}