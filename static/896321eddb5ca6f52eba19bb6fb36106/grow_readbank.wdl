version 1.0

task Growreadbank {
  input {
    Boolean? create_new_bank
    Boolean? input_celera_msg
    Boolean? force_new_read
    Boolean? compress_reads_allows
    String grow_read_bank
  }
  command <<<
    grow_readbank \
      ~{grow_read_bank} \
      ~{if (create_new_bank) then "-c" else ""} \
      ~{if (input_celera_msg) then "-C" else ""} \
      ~{if (force_new_read) then "-f" else ""} \
      ~{if (compress_reads_allows) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create_new_bank: "Create a new read bank"
    input_celera_msg: "Input is Celera msg format, i.e., a .frg file"
    force_new_read: "Force new read bank by deleting existing one first"
    compress_reads_allows: "Compress reads in the Bank, only allows chars ACGTN"
    grow_read_bank: "<bank-name> <input-file[s]>"
  }
  output {
    File out_stdout = stdout()
  }
}