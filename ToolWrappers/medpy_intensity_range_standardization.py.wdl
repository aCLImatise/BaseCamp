version 1.0

task MedpyIntensityRangeStandardizationpy {
  input {
    Boolean? verbose
    Boolean? debug
    Boolean? force
    String? load_model
    String? save_model
    String? cut_off_p
    Int? landmark_p
    String? std_space
    String? save_images
    String? threshold
    Array[String] masks
    Boolean? ignore
    String images
  }
  command <<<
    medpy_intensity_range_standardization_py \
      ~{images} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(load_model) then ("--load-model " +  '"' + load_model + '"') else ""} \
      ~{if defined(save_model) then ("--save-model " +  '"' + save_model + '"') else ""} \
      ~{if defined(cut_off_p) then ("--cutoffp " +  '"' + cut_off_p + '"') else ""} \
      ~{if defined(landmark_p) then ("--landmarkp " +  '"' + landmark_p + '"') else ""} \
      ~{if defined(std_space) then ("--stdspace " +  '"' + std_space + '"') else ""} \
      ~{if defined(save_images) then ("--save-images " +  '"' + save_images + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(masks) then ("--masks " +  '"' + masks + '"') else ""} \
      ~{if (ignore) then "--ignore" else ""}
  >>>
  parameter_meta {
    verbose: "Verbose output"
    debug: "Display debug information."
    force: "Overwrite existing files (both model and images)"
    load_model: "Location of the pickled intensity range model to load.\\nActivated application mode."
    save_model: "Save the trained model under this name as a pickled\\nobject (should end in .pkl). Activates training mode."
    cut_off_p: "Colon-separated lower and upper cut-off percentile\\nvalues to exclude intensity outliers during the model\\ntraining."
    landmark_p: "The landmark percentiles, based on which to train the\\nmodel. Can be L2, L3, L4 or a colon-separated, ordered\\nlist of percentiles."
    std_space: "Two colon-separated intensity values to roughly define\\nthe average intensity space to learn. In most cases\\nshould be left set to 'auto'"
    save_images: "Save the transformed images under this location.\\nRequired for the application mode, optional for the\\nlearning mode."
    threshold: "All voxel with an intensity > threshold are considered\\nas foreground. Supply either this or a mask for each\\nimage."
    masks: "A number of binary foreground mask, one for each\\nimage. Alternative to supplying a threshold. Overrides\\nthe threshold parameter if supplied."
    ignore: "Ignore possible loss of information during the\\nintensity transformation. Should only be used when you\\nknow what you are doing.\\n"
    images: "The images used for training (in the learning case) or\\nto transform (in the transformation case)"
  }
  output {
    File out_stdout = stdout()
  }
}