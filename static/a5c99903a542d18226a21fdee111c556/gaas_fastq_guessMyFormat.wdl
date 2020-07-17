version 1.0

task GaasFastqGuessMyFormat.pl {
  input {
    String? fast_q
    Boolean? advanced_mode_can
    Boolean? set_max_time
  }
  command <<<
    gaas_fastq_guessMyFormat.pl \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{true="-a" false="" advanced_mode_can} \
      ~{true="-t" false="" set_max_time}
  >>>
  parameter_meta {
    fast_q: "STRING: Input fastq file that will be read."
    advanced_mode_can: "Advanced mode. Can be used to find exactly which scoring system it is."
    set_max_time: "Set the max search time in seconds to be used when using -a. Default is 60."
  }
}