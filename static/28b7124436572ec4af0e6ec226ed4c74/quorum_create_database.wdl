version 1.0

task QuorumCreateDatabase {
  input {
    String? size
    String? mer
    String? bits
    String? min_qual_value
    String? min_qual_char
    String? threads
    File? output_file_combineddatabase
    Int? re_probe
    String create_database_cmdline
    String reads
  }
  command <<<
    quorum_create_database \
      ~{create_database_cmdline} \
      ~{reads} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(mer) then ("--mer " +  '"' + mer + '"') else ""} \
      ~{if defined(bits) then ("--bits " +  '"' + bits + '"') else ""} \
      ~{if defined(min_qual_value) then ("--min-qual-value " +  '"' + min_qual_value + '"') else ""} \
      ~{if defined(min_qual_char) then ("--min-qual-char " +  '"' + min_qual_char + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file_combineddatabase) then ("--output " +  '"' + output_file_combineddatabase + '"') else ""} \
      ~{if defined(re_probe) then ("--reprobe " +  '"' + re_probe + '"') else ""}
  >>>
  parameter_meta {
    size: "*Initial hash size"
    mer: "*Mer length"
    bits: "*Bits for value field"
    min_qual_value: "Min quality as an int"
    min_qual_char: "Min quality as a ASCII character"
    threads: "Number of threads (1)"
    output_file_combineddatabase: "Output file (combined_database)"
    re_probe: "Maximum number of reprobes (126)"
    create_database_cmdline: ""
    reads: ""
  }
}