version 1.0

task NgmUtilsDebug {
  input {
    String? ngmNgmUtils
  }
  command <<<
    ngm-utils-debug \
      ~{ngmNgmUtils}
  >>>
}