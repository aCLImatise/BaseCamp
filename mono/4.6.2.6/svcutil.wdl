version 1.0

task Svcutil {
  input {
    Boolean? async
    File? config
    Boolean? internal
    String? language
    Boolean? mono_touch
    Boolean? moonlight
    String? namespace
    Boolean? no_config
    Boolean? nologo
    File? out
    String? reference
    Boolean? target_client_version
    Boolean? typed_message
  }
  command <<<
    svcutil \
      ~{if (async) then "--async" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (internal) then "--internal" else ""} \
      ~{if defined(language) then ("--language " +  '"' + language + '"') else ""} \
      ~{if (mono_touch) then "--monotouch" else ""} \
      ~{if (moonlight) then "--moonlight" else ""} \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""} \
      ~{if (no_config) then "--noConfig" else ""} \
      ~{if (nologo) then "--noLogo" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (target_client_version) then "--targetClientVersion" else ""} \
      ~{if (typed_message) then "--typedMessage" else ""}
  >>>
  parameter_meta {
    async: "Generate async methods."
    config: "Configuration file names to generate."
    internal: "Generate types as internal."
    language: "Specify target code LANGUAGE. Default is 'csharp'."
    mono_touch: "Generate MonoTouch client. (This option may vanish)"
    moonlight: "Generate moonlight client. (This option may vanish)"
    namespace: "Code namespace name to generate."
    no_config: "Do not generate config file."
    nologo: "Do not show tool logo."
    out: "Output code filename."
    reference: "Referenced assembly files."
    target_client_version: "[=VALUE]\\nIndicate target client version. Valid values:\\nVersion35"
    typed_message: "Generate typed messages."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}