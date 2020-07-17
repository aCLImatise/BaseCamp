version 1.0

task BedtoolsTag {
  input {
    Boolean? intervals
    String? i
    Array[File] files
    Array[String] labels
  }
  command <<<
    bedtools tag \
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
  }
}