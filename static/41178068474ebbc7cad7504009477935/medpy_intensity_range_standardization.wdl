version 1.0

task MedpyIntensityRangeStandardization.py {
  input {
    Boolean? verbose
    Boolean? debug
    Boolean? force
    String? load_model
    String? save_model
    String? cut_off_p
    String? landmark_p
    String? std_space
    String? save_images
    String? threshold
    Array[String] masks
    Boolean? ignore
    String images
  }
  command <<<
    medpy_intensity_range_standardization.py \
      ~{images} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--force" false="" force} \
      ~{if defined(load_model) then ("--load-model " +  '"' + load_model + '"') else ""} \
      ~{if defined(save_model) then ("--save-model " +  '"' + save_model + '"') else ""} \
      ~{if defined(cut_off_p) then ("--cutoffp " +  '"' + cut_off_p + '"') else ""} \
      ~{if defined(landmark_p) then ("--landmarkp " +  '"' + landmark_p + '"') else ""} \
      ~{if defined(std_space) then ("--stdspace " +  '"' + std_space + '"') else ""} \
      ~{if defined(save_images) then ("--save-images " +  '"' + save_images + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(masks) then ("--masks " +  '"' + masks + '"') else ""} \
      ~{true="--ignore" false="" ignore}
  >>>
  parameter_meta {
    verbose: "Verbose output"
    debug: "Display debug information."
    force: "Overwrite existing files (both model and images)"
    load_model: "Location of the pickled intensity range model to load. Activated application mode."
    save_model: "Save the trained model under this name as a pickled object (should end in .pkl). Activates training mode."
    cut_off_p: "Colon-separated lower and upper cut-off percentile values to exclude intensity outliers during the model training."
    landmark_p: "The landmark percentiles, based on which to train the model. Can be L2, L3, L4 or a colon-separated, ordered list of percentiles."
    std_space: "Two colon-separated intensity values to roughly define the average intensity space to learn. In most cases should be left set to 'auto'"
    save_images: "Save the transformed images under this location. Required for the application mode, optional for the learning mode."
    threshold: "All voxel with an intensity > threshold are considered as foreground. Supply either this or a mask for each image."
    masks: "A number of binary foreground mask, one for each image. Alternative to supplying a threshold. Overrides the threshold parameter if supplied."
    ignore: "Ignore possible loss of information during the intensity transformation. Should only be used when you know what you are doing."
    images: "The images used for training (in the learning case) or to transform (in the transformation case)"
  }
}