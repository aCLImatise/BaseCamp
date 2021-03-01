version 1.0

task Newpluginpl {
  input {
    String plugin_dot
  }
  command <<<
    new_plugin_pl \
      ~{plugin_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    plugin_dot: "USAGE\\nbin/new-plugin.pl MyNewPlugin\\n"
  }
  output {
    File out_stdout = stdout()
  }
}