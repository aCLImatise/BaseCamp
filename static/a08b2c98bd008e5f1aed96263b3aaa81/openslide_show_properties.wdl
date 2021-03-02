version 1.0

task Openslideshowproperties {
  command <<<
    openslide_show_properties
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}