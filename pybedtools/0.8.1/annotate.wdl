version 1.0

task Annotate.py {
  input {
    String? file_to_annotate
    String? file_with_annotations
    String? upstream
    String? downstream
    Boolean? report_distance
  }
  command <<<
    annotate.py \
      ~{if defined(file_to_annotate) then ("-a " +  '"' + file_to_annotate + '"') else ""} \
      ~{if defined(file_with_annotations) then ("-b " +  '"' + file_with_annotations + '"') else ""} \
      ~{if defined(upstream) then ("--upstream " +  '"' + upstream + '"') else ""} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{true="--report-distance" false="" report_distance}
  >>>
  parameter_meta {
    file_to_annotate: "file to annotate"
    file_with_annotations: "file with annotations"
    upstream: "distance upstream of [a] to look for [b]"
    downstream: "distance downstream of [a] to look for [b]"
    report_distance: "report the distance, not just the genes"
  }
}