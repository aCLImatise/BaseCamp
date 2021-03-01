version 1.0

task BannerPredict {
  input {
    String? model
    String? probability
    Boolean? verbose
    String banner
  }
  command <<<
    banner predict \
      ~{banner} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(probability) then ("--probability " +  '"' + probability + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    model: "The model that banner trained"
    probability: "The probability threshold for reporting\\nclassifications"
    verbose: "Print all predictions and probability, even if\\nthreshold not met yet\\n"
    banner: ""
  }
  output {
    File out_stdout = stdout()
  }
}