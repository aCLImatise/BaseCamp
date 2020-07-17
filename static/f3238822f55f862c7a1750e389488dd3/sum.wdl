version 1.0

task Sum {
  input {
    Boolean? use_sum_algorithm
    Boolean? sysv
    String? option
  }
  command <<<
    sum \
      ~{option} \
      ~{true="-r" false="" use_sum_algorithm} \
      ~{true="--sysv" false="" sysv}
  >>>
  parameter_meta {
    use_sum_algorithm: "use BSD sum algorithm, use 1K blocks"
    sysv: "use System V sum algorithm, use 512 bytes blocks"
    option: ""
  }
}