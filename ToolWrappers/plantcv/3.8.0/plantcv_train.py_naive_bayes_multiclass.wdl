version 1.0

task PlantcvtrainpyNaiveBayesMulticlass {
  input {
    File? file
    File? outfile
    Boolean? plots
  }
  command <<<
    plantcv_train_py naive_bayes_multiclass \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (plots) then "--plots" else ""}
  >>>
  parameter_meta {
    file: "Input file containing a table of pixel RGB values\\nsampled for each input class."
    outfile: "Trained classifier output filename."
    plots: "Make output plots."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}