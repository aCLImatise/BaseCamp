version 1.0

task DxdockerAddtoappletApplet {
  input {
    Boolean? alternative_export
    String dx_docker
    String add_to_applet
    String image
    String applet
  }
  command <<<
    dx_docker add_to_applet applet \
      ~{dx_docker} \
      ~{add_to_applet} \
      ~{image} \
      ~{applet} \
      ~{if (alternative_export) then "--alternative_export" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0"
  }
  parameter_meta {
    alternative_export: ""
    dx_docker: ""
    add_to_applet: ""
    image: ""
    applet: ""
  }
  output {
    File out_stdout = stdout()
  }
}