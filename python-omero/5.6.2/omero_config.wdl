version 1.0

task OmeroConfig {
  input {
    String sourceSource
  }
  command <<<
    omero config \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""}
  >>>
}