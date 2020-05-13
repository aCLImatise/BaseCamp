version 1.0

task NgmUtils {
  input {
    String? ngmNgmUtils
  }
  command <<<
    ngm-utils \
      ~{ngmNgmUtils}
  >>>
}