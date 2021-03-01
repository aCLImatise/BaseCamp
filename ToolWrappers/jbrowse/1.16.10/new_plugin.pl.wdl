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
    docker: "quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0"
  }
  parameter_meta {
    plugin_dot: "USAGE\\nbin/new-plugin.pl MyNewPlugin\\n"
  }
  output {
    File out_stdout = stdout()
  }
}