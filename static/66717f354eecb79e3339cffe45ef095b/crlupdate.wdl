version 1.0

task Crlupdate {
  input {
    Boolean? use_store_default
    Boolean? verbose_mode_display
    Boolean? force_download_replace
  }
  command <<<
    crlupdate \
      ~{if (use_store_default) then "-m" else ""} \
      ~{if (verbose_mode_display) then "-v" else ""} \
      ~{if (force_download_replace) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_store_default: "use the machine certificate store (default to user)"
    verbose_mode_display: "verbose mode (display status for every steps)"
    force_download_replace: "force download (and replace existing CRL)"
  }
  output {
    File out_stdout = stdout()
  }
}