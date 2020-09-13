version 1.0

task Quastdownloadbusco {
  input {
    String done
  }
  command <<<
    quast_download_busco \
      ~{done}
  >>>
  parameter_meta {
    done: "Downloading BUSCO database..."
  }
  output {
    File out_stdout = stdout()
  }
}