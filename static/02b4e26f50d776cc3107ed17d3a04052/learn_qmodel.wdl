version 1.0

task LearnQmodel {
  input {
    Array[File] p_five
    Array[File] p_seven
    File? output_file_namepath
    Boolean? visualize
    Boolean? plot
    File? show
    Int? length
  }
  command <<<
    learn_qmodel \
      ~{if defined(p_five) then ("--p5 " +  '"' + p_five + '"') else ""} \
      ~{if defined(p_seven) then ("--p7 " +  '"' + p_seven + '"') else ""} \
      ~{if defined(output_file_namepath) then ("--output " +  '"' + output_file_namepath + '"') else ""} \
      ~{if (visualize) then "--visualize" else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if defined(show) then ("--show " +  '"' + show + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p_five: "Path to a forward (p5) read file."
    p_seven: "Path to a reverse (p7) read file."
    output_file_namepath: "Output file name/path. Default: custom.qmodel"
    visualize: "Visualize the accumulating profile. And create a pdf\\nversion of the plot. Only works for read file with\\nmore than 10000 reads."
    plot: "Plot the quality distributions as pdf. (Like\\nvisualize, but without the progress updates. Only\\nplots the final distributions.)"
    show: "Read and plot a .qmodel.npz file."
    length: "Maximum read length. All values after this position\\nwill be truncated and not become part of the model.\\nDefault: 100\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_namepath = "${in_output_file_namepath}"
  }
}