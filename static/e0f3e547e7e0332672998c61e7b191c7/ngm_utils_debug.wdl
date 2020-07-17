version 1.0

task NgmUtilsDebug {
  input {
    String ngm_utils
  }
  command <<<
    ngm-utils-debug \
      ~{ngm_utils}
  >>>
  parameter_meta {
    ngm_utils: "[--] <name>"
  }
}