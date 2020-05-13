version 1.0

task BwaFa2pac {
  input {
    Boolean fF
    String? inInFasta
    String? outOutPrefix
  }
  command <<<
    bwa fa2pac \
      ~{inInFasta} \
      ~{true="-f" false="" fF} \
      ~{outOutPrefix}
  >>>
}