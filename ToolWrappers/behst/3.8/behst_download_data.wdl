version 1.0

task Behstdownloaddata {
  input {
    Directory? data
    Boolean? small
  }
  command <<<
    behst_download_data \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if (small) then "--small" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data: "Folder where to download the default data files\\n(default $XDG_DATA_HOME/behst, if set, or\\n$HOME/.local/share/behst otherwise)"
    small: "If activated, download only the minimal set of files\\nto test BEHST functionality (default files needed for\\nvalid genomic set enrichment)"
  }
  output {
    File out_stdout = stdout()
  }
}