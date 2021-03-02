version 1.0

task Yaml2gff14pl {
  input {
    String? filter_status
  }
  command <<<
    yaml2gff_1_4_pl \
      ~{if defined(filter_status) then ("--filterstatus " +  '"' + filter_status + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    filter_status: "filter out alignments with given status, e.g. 'incomplete'"
  }
  output {
    File out_stdout = stdout()
  }
}