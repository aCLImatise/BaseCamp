version 1.0

task Lambda2 {
  input {
    Boolean? version_check
    Boolean? copyright
  }
  command <<<
    lambda2 \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if (copyright) then "--copyright" else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    copyright: "Display long copyright information."
  }
  output {
    File out_stdout = stdout()
  }
}