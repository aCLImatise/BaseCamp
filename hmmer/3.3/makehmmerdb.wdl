version 1.0

task Makehmmerdb {
  input {
    File? in_format
    Int? bin_length
    Int? sa_freq
    Int? block_size
  }
  command <<<
    makehmmerdb \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(bin_length) then ("--bin_length " +  '"' + bin_length + '"') else ""} \
      ~{if defined(sa_freq) then ("--sa_freq " +  '"' + sa_freq + '"') else ""} \
      ~{if defined(block_size) then ("--block_size " +  '"' + block_size + '"') else ""}
  >>>
  parameter_meta {
    in_format: ": specify that input file is in format <s>"
    bin_length: ": bin length (power of 2;  32<=b<=4096)  [256]"
    sa_freq: ": suffix array sample rate (power of 2)  [8]"
    block_size: ": input sequence broken into blocks this size (Mbases)  [50]"
  }
  output {
    File out_stdout = stdout()
  }
}