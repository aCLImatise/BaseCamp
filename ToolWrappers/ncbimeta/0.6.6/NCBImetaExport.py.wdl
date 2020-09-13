version 1.0

task NCBImetaExportpy {
  input {
    File? database
    Directory? output_dir
  }
  command <<<
    NCBImetaExport_py \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(output_dir) then ("--outputdir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    database: "Path to the sqlite database generated by NCBImeta."
    output_dir: "Output directory.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}