version 1.0

task Rebaler {
  input {
    Boolean? direct
    String? threads
    Boolean? random
  }
  command <<<
    rebaler \
      ~{true="--direct" false="" direct} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--random" false="" random}
  >>>
  parameter_meta {
    direct: "If set, Rebaler will polish the given genome without first producing an unpolished version (default: False)"
    threads: "Number of threads to use for alignment and polishing (default: 8)"
    random: "If a part of the reference is missing, replace it with random sequence (default: leave it as the reference sequence)"
  }
}