version 1.0

task MultiQsub.py {
  input {
    Boolean testTest
    String? jobJobScripts
  }
  command <<<
    multi_qsub.py \
      ~{jobJobScripts} \
      ~{true="--test" false="" testTest}
  >>>
}