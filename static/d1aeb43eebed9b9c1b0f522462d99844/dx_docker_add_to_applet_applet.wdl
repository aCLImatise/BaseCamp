version 1.0

task DxDockerAddToAppletApplet {
  input {
    Boolean? alternative_export
    String dx_docker
    String add_to_applet
    String image
    String applet
  }
  command <<<
    dx-docker add-to-applet applet \
      ~{dx_docker} \
      ~{add_to_applet} \
      ~{image} \
      ~{applet} \
      ~{true="--alternative_export" false="" alternative_export}
  >>>
  parameter_meta {
    alternative_export: ""
    dx_docker: ""
    add_to_applet: ""
    image: ""
    applet: ""
  }
}