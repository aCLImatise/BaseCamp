version 1.0

task OmeroConfig {
  input {
    String? source
  }
  command <<<
    omero config \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  parameter_meta {
    source: "Configuration file to be used. Default: etc/grid/config.xml"
  }
}