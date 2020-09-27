version 1.0

task RiboraptorPlotreadlength {
  input {
    Int? read_lengths
    String? title
    Boolean? milli_fy_labels
    File? save_to
    Boolean? ascii
  }
  command <<<
    riboraptor plot_read_length \
      ~{if defined(read_lengths) then ("--read-lengths " +  '"' + read_lengths + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (milli_fy_labels) then "--millify_labels" else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{if (ascii) then "--ascii" else ""}
  >>>
  parameter_meta {
    read_lengths: "Path to read length pickle file"
    title: "Plot Title"
    milli_fy_labels: "Convert labels on Y-axis to concise form?"
    save_to: "Path to file (png/pdf) to save to"
    ascii: "Do not plot ascii"
  }
  output {
    File out_stdout = stdout()
  }
}