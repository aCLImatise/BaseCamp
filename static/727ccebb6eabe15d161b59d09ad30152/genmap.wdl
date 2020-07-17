version 1.0

task Genmap {
  input {
    Boolean? version_check
    Boolean? copyright
  }
  command <<<
    genmap \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{true="--copyright" false="" copyright}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    copyright: "Display long copyright information."
  }
}