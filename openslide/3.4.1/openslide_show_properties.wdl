version 1.0

task Openslideshowproperties {
  command <<<
    openslide_show_properties
  >>>
  output {
    File out_stdout = stdout()
  }
}