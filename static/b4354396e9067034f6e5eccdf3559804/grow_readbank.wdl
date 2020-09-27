version 1.0

task Growreadbank {
  input {
    Boolean? create_new_bank
    Boolean? input_celera_msg
    Boolean? force_new_bank
    Boolean? compress_reads_bank
    String grow_read_bank
  }
  command <<<
    grow_readbank \
      ~{grow_read_bank} \
      ~{if (create_new_bank) then "-c" else ""} \
      ~{if (input_celera_msg) then "-C" else ""} \
      ~{if (force_new_bank) then "-f" else ""} \
      ~{if (compress_reads_bank) then "-s" else ""}
  >>>
  parameter_meta {
    create_new_bank: "Create a new read bank"
    input_celera_msg: "Input is Celera msg format, i.e., a .frg file"
    force_new_bank: "Force new read bank by deleting existing one first"
    compress_reads_bank: "Compress reads in the Bank, only allows chars ACGTN"
    grow_read_bank: "<bank-name> <input-file[s]>"
  }
  output {
    File out_stdout = stdout()
  }
}