version 1.0

task GrowReadbank {
  input {
    Boolean? create_new_bank
    Boolean? input_celera_msg
    Boolean? force_new_read
    Boolean? compress_reads_bank
    String grow_read_bank
  }
  command <<<
    grow-readbank \
      ~{grow_read_bank} \
      ~{true="-c" false="" create_new_bank} \
      ~{true="-C" false="" input_celera_msg} \
      ~{true="-f" false="" force_new_read} \
      ~{true="-s" false="" compress_reads_bank}
  >>>
  parameter_meta {
    create_new_bank: "Create a new read bank"
    input_celera_msg: "Input is Celera msg format, i.e., a .frg file"
    force_new_read: "Force new read bank by deleting existing one first"
    compress_reads_bank: "Compress reads in the Bank, only allows chars ACGTN"
    grow_read_bank: "<bank-name> <input-file[s]>"
  }
}