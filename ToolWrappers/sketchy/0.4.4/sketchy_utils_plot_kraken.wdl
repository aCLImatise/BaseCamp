version 1.0

task SketchyUtilsPlotkraken {
  input {
    File? report
    File? prefix
    String? level
    Int? top
    String? color
    String? title
    Boolean? sub
  }
  command <<<
    sketchy utils plot_kraken \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (sub) then "--sub" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    report: "Path or file glob to tax report files"
    prefix: "Output prefix for plot file."
    level: "Taxonomic level to assess: species [S]"
    top: "Show top taxonomic levels in plots [10]"
    color: "Color palette for central donut plot."
    title: "Row titles for center plot, comma separated string."
    sub: "Add subplot titles for each column."
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}