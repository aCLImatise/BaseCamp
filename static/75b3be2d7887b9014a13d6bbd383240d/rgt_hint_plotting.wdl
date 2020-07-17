version 1.0

task RgtHintPlotting {
  input {
    String? organism
    File? reads_file
  }
  command <<<
    rgt-hint plotting \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""}
  >>>
  parameter_meta {
    organism: ""
    reads_file: ""
  }
}