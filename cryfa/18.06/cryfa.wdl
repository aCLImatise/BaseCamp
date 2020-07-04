version 1.0

task Cryfa {
  input {
    Boolean? key_file_name
    Boolean? _dec_decrypt
    Boolean? _force_force
    Boolean? _verbose_verbose
    Boolean? _stopshuffle_stop
    Boolean? _number_threads
  }
  command <<<
    cryfa \
      ~{true="-k" false="" key_file_name} \
      ~{true="-d" false="" _dec_decrypt} \
      ~{true="-f" false="" _force_force} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-s" false="" _stopshuffle_stop} \
      ~{true="-t" false="" _number_threads}
  >>>
  parameter_meta {
    key_file_name: "[KEY_FILE],  --key [KEY_FILE] key file name -- MANDATORY The KEY_FILE would contain a password. To make a strong password, the \"keygen\" program can be  employed via the command \"./keygen\"."
    _dec_decrypt: ",  --dec decrypt & unpack"
    _force_force: ",  --force force to consider input as non-FASTA/FASTQ Forces Cryfa not to compact, but shuffle and encrypt.     If the input is FASTA/FASTQ, it is again considered as    non-FASTA/FASTQ, therefore, compaction will be ignored,   but shuffling and encryption will be performed."
    _verbose_verbose: ",  --verbose verbose mode (more information)"
    _stopshuffle_stop: ",  --stop_shuffle stop shuffling the input"
    _number_threads: "[NUMBER],  --thread [NUMBER] number of threads"
  }
}