version 1.0

task NgmUtils {
  input {
    String ngm_utils
  }
  command <<<
    ngm-utils \
      ~{ngm_utils}
  >>>
  parameter_meta {
    ngm_utils: "[--] <name>"
  }
}