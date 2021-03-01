version 1.0

task Cryfa {
  input {
    Boolean? key_file_name
    Boolean? dec
    Boolean? force
    Boolean? verbose
    Boolean? stop_shuffle
    Boolean? number_of_threads
  }
  command <<<
    cryfa \
      ~{if (key_file_name) then "-k" else ""} \
      ~{if (dec) then "--dec" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (stop_shuffle) then "--stop_shuffle" else ""} \
      ~{if (number_of_threads) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    key_file_name: "[KEY_FILE],  --key [KEY_FILE]\\nkey file name -- MANDATORY\\nThe KEY_FILE would contain a password.\\nTo make a strong password, the \\\"keygen\\\" program can be\\nemployed via the command \\\"./keygen\\\"."
    dec: "decrypt & unpack"
    force: "force to consider input as non-FASTA/FASTQ\\nForces Cryfa not to compact, but shuffle and encrypt.\\nIf the input is FASTA/FASTQ, it is again considered as\\nnon-FASTA/FASTQ, therefore, compaction will be ignored,\\nbut shuffling and encryption will be performed."
    verbose: "verbose mode (more information)"
    stop_shuffle: "stop shuffling the input"
    number_of_threads: "[NUMBER],  --thread [NUMBER]\\nnumber of threads"
  }
  output {
    File out_stdout = stdout()
  }
}