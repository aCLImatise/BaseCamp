version 1.0

task VtoolsReportPlotPhenoFields {
  input {
    Boolean? samples
    File? save_data
    File? save_script
    Int? width
    Int? height
    String? verbosity
    File? hist
    Boolean? norm_curve
    File? dot
    Int? dot_size
    String? discrete_color
    File? box
    Array[String] stratify
    Int? outlier_size
    String? color
    String fields
  }
  command <<<
    vtools_report plot_pheno_fields \
      ~{fields} \
      ~{if (samples) then "--samples" else ""} \
      ~{if defined(save_data) then ("--save_data " +  '"' + save_data + '"') else ""} \
      ~{if defined(save_script) then ("--save_script " +  '"' + save_script + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(hist) then ("--hist " +  '"' + hist + '"') else ""} \
      ~{if (norm_curve) then "--norm_curve" else ""} \
      ~{if defined(dot) then ("--dot " +  '"' + dot + '"') else ""} \
      ~{if defined(dot_size) then ("--dot_size " +  '"' + dot_size + '"') else ""} \
      ~{if defined(discrete_color) then ("--discrete_color " +  '"' + discrete_color + '"') else ""} \
      ~{if defined(box) then ("--box " +  '"' + box + '"') else ""} \
      ~{if defined(stratify) then ("--stratify " +  '"' + stratify + '"') else ""} \
      ~{if defined(outlier_size) then ("--outlier_size " +  '"' + outlier_size + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    samples: "[SAMPLES [SAMPLES ...]]\\nConditions based on which samples are selected.\\nDefault to all samples."
    save_data: "Save data to file."
    save_script: "Save R script to file."
    width: "Width of plot. Default to 800."
    height: "Height of plot. Default to 600."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1)."
    hist: "File name of the outputted figure, which can have type\\nPDF, EPS, or JPG. Multiple files might be produced if\\nmore than one figure is produced (e.g.\\nMyFig_$FIELD1.pdf, MyFig_$FILED2.pdf if MyFig.pdf is\\nspecified)"
    norm_curve: "Add a normal distribution N(mean, stdev) density curve\\nto the histogram."
    dot: "File name of the outputted figure, which can have type\\nPDF, EPS, or JPG."
    dot_size: "Size of dots. Default is 2.0"
    discrete_color: "If specified, the third field of input will be treated\\nas \\\"factor\\\" data."
    box: "File name of the outputted figure, which can have type\\nPDF, EPS, or JPG."
    stratify: "Cutoff values to stratify data in the input field for\\nbox plot. When this option is on, only one input field\\nis allowed."
    outlier_size: "Size of outlier dots. Default is 2.0"
    color: "Color theme for boxes.\\n"
    fields: "A list of fields that will be outputted."
  }
  output {
    File out_stdout = stdout()
  }
}