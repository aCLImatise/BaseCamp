version 1.0

task CoordinateAdaptersh {
  input {
    Int? file_link_file
  }
  command <<<
    coordinate_adapter_sh \
      ~{if defined(file_link_file) then ("-i " +  '"' + file_link_file + '"') else ""}
  >>>
  parameter_meta {
    file_link_file: "file in bed format\\n-l link file with coordinates relationship within bed file ddbb and link reference\\n-o output directory (optional). By default the file is placed in the same location as input\\n-n length to extend annotation, default 2000\\n-f file name\\n-u uniq mode. Remove duplicates\\n-p prokka mode. Remove suffix of prokka\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}