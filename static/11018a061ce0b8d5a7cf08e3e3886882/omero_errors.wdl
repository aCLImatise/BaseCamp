version 1.0

task OmeroErrors {
  input {
    Int lengthLength
    String? pluginsPlugins
  }
  command <<<
    omero errors \
      ~{pluginsPlugins} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""}
  >>>
}