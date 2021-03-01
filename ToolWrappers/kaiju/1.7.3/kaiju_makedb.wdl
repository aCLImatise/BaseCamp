version 1.0

task Kaijumakedb {
  input {
    Int? set_number_parallel
    Boolean? no_download
    Boolean? index_only
  }
  command <<<
    kaiju_makedb \
      ~{if defined(set_number_parallel) then ("-t " +  '"' + set_number_parallel + '"') else ""} \
      ~{if (no_download) then "--no-download" else ""} \
      ~{if (index_only) then "--index-only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_number_parallel: "Set number of parallel threads for index construction to X \\(default:5\\)\\nThe more threads are used, the higher the memory requirement becomes."
    no_download: "Do not download files, but use the existing files in the folder."
    index_only: "Only create BWT and FMI from kaiju_db_*.faa files, implies --no-download."
  }
  output {
    File out_stdout = stdout()
  }
}