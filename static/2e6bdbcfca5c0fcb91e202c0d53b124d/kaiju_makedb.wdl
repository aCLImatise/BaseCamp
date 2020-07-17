version 1.0

task KaijuMakedb {
  input {
    String? set_number_parallel
    Boolean? no_download
    Boolean? index_only
  }
  command <<<
    kaiju-makedb \
      ~{if defined(set_number_parallel) then ("-t " +  '"' + set_number_parallel + '"') else ""} \
      ~{true="--no-download" false="" no_download} \
      ~{true="--index-only" false="" index_only}
  >>>
  parameter_meta {
    set_number_parallel: "Set number of parallel threads for index construction to X \(default:5\) The more threads are used, the higher the memory requirement becomes."
    no_download: "Do not download files, but use the existing files in the folder."
    index_only: "Only create BWT and FMI from kaiju_db_*.faa files, implies --no-download."
  }
}