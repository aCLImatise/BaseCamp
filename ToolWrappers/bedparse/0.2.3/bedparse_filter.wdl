version 1.0

task BedparseFilter {
  input {
    File? annotation
    File? column
    Boolean? inverse
  }
  command <<<
    bedparse filter \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if (inverse) then "--inverse" else ""}
  >>>
  parameter_meta {
    annotation: "Path to the annotation file."
    column: "Column of the annotation file (1-based, default=1)."
    inverse: "Only report BED entries absent from the annotation\\nfile.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}