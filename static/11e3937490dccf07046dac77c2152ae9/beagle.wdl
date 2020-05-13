version 1.0

task Beagle {
  input {
    String jarJar
    String? javaJava
    String? argumentsArguments
  }
  command <<<
    beagle \
      ~{javaJava} \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""} \
      ~{argumentsArguments}
  >>>
}