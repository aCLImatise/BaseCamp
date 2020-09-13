version 1.0

task Model {
  input {
    String? for
    Boolean? verbosity
    Boolean? no_logging
  }
  command <<<
    model \
      ~{if defined(for) then ("-for " +  '"' + for + '"') else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_logging) then "--no-logging" else ""}
  >>>
  parameter_meta {
    for: "using a fit model:"
    verbosity: "Increase output verbosity (default: None)"
    no_logging: "If set, do not log on file. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}