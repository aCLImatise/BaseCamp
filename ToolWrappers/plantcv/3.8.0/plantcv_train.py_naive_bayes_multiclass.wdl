version 1.0

task PlantcvtrainpyNaiveBayesMulticlass {
  input {
    File? input_file_containing
    File? outfile
    Boolean? plots
  }
  command <<<
    plantcv_train_py naive_bayes_multiclass \
      ~{if defined(input_file_containing) then ("--file " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (plots) then "--plots" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_containing: "Input file containing a table of pixel RGB values\\nsampled for each input class."
    outfile: "Trained classifier output filename."
    plots: "Make output plots."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}