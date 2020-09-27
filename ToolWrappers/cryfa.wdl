version 1.0

task Cryfa {
  input {
    Boolean? key_file_name
    Boolean? _decdecrypt_unpack
    Boolean? _forceforce_consider
    Boolean? _verboseverbose_mode
    Boolean? _stopshufflestop_shuffling
    Boolean? number_of_threads
  }
  command <<<
    cryfa \
      ~{if (key_file_name) then "-k" else ""} \
      ~{if (_decdecrypt_unpack) then "-d" else ""} \
      ~{if (_forceforce_consider) then "-f" else ""} \
      ~{if (_verboseverbose_mode) then "-v" else ""} \
      ~{if (_stopshufflestop_shuffling) then "-s" else ""} \
      ~{if (number_of_threads) then "-t" else ""}
  >>>
  parameter_meta {
    key_file_name: "[KEY_FILE],  --key [KEY_FILE]\\nkey file name -- MANDATORY\\nThe KEY_FILE would contain a password.\\nTo make a strong password, the \\\"keygen\\\" program can be\\nemployed via the command \\\"./keygen\\\"."
    _decdecrypt_unpack: ",  --dec\\ndecrypt & unpack"
    _forceforce_consider: ",  --force\\nforce to consider input as non-FASTA/FASTQ\\nForces Cryfa not to compact, but shuffle and encrypt.\\nIf the input is FASTA/FASTQ, it is again considered as\\nnon-FASTA/FASTQ, therefore, compaction will be ignored,\\nbut shuffling and encryption will be performed."
    _verboseverbose_mode: ",  --verbose\\nverbose mode (more information)"
    _stopshufflestop_shuffling: ",  --stop_shuffle\\nstop shuffling the input"
    number_of_threads: "[NUMBER],  --thread [NUMBER]\\nnumber of threads"
  }
  output {
    File out_stdout = stdout()
  }
}