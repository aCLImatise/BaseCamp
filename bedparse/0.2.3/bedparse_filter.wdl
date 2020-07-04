version 1.0

task BedparseFilter {
  input {
    String? annotation
    String? column
    Boolean? inverse
  }
  command <<<
    bedparse filter \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{true="--inverse" false="" inverse}
  >>>
  parameter_meta {
    annotation: "Path to the annotation file."
    column: "Column of the annotation file (1-based, default=1)."
    inverse: "Only report BED entries absent from the annotation file."
  }
}