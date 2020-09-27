version 1.0

task PlantcvtrainpyNaiveBayes {
  input {
    Directory? img_dir
    Directory? mask_dir
    File? outfile
    Boolean? plots
  }
  command <<<
    plantcv_train_py naive_bayes \
      ~{if defined(img_dir) then ("--imgdir " +  '"' + img_dir + '"') else ""} \
      ~{if defined(mask_dir) then ("--maskdir " +  '"' + mask_dir + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (plots) then "--plots" else ""}
  >>>
  parameter_meta {
    img_dir: "Input directory containing images."
    mask_dir: "Input directory containing black/white masks."
    outfile: "Trained classifier output filename."
    plots: "Make output plots."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}