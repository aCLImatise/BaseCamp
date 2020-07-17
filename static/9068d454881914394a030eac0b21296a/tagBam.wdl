version 1.0

task TagBam {
  input {
    Boolean? intervals
    String? i
    Array[File] files
    Array[String] labels
    String bed_tools
    String tag
  }
  command <<<
    tagBam \
      ~{bed_tools} \
      ~{tag} \
      ~{true="-intervals" false="" intervals} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(files) then ("-files " +  '"' + files + '"') else ""} \
      ~{if defined(labels) then ("-labels " +  '"' + labels + '"') else ""}
  >>>
  parameter_meta {
    intervals: "Use the full interval (including name, score, and strand) to populate tags. Requires the -labels option to identify from which file the interval came."
    i: ""
    files: ""
    labels: ""
    bed_tools: ""
    tag: ""
  }
}