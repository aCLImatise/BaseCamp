version 1.0

task RgthintPlotting {
  input {
    File? reads_file
    String? organism
  }
  command <<<
    rgt_hint plotting \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""}
  >>>
  parameter_meta {
    reads_file: ""
    organism: ""
  }
  output {
    File out_stdout = stdout()
  }
}