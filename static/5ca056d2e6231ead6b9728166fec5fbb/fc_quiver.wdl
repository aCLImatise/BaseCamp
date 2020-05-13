version 1.0

task FcQuiver.py {
  input {
    String targetTarget
    String loggingLoggingConfigFn
    String? configConfigFn
  }
  command <<<
    fc_quiver.py \
      ~{configConfigFn} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(loggingLoggingConfigFn) then ("--logging-config-fn " +  '"' + loggingLoggingConfigFn + '"') else ""}
  >>>
}