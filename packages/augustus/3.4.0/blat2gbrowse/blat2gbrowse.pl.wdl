version 1.0

task Blat2gbrowsepl {
  input {
    Boolean? old_format
    File? est_names
    String? source
  }
  command <<<
    blat2gbrowse_pl \
      ~{if (old_format) then "--oldformat" else ""} \
      ~{if defined(est_names) then ("--estnames " +  '"' + est_names + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    old_format: "output format for old GBrowse (before 2.0)"
    est_names: "output file with the names of the ESTs"
    source: "identifyier in the source column"
  }
  output {
    File out_stdout = stdout()
    File out_est_names = "${in_est_names}"
  }
}