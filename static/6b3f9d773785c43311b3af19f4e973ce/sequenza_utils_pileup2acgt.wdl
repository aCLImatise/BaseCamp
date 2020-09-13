version 1.0

task SequenzautilsPileup2acgt {
  input {
    File? m_pile_up
    File? name_use_compression
    String? minimum_required_read
    String? q_limit
    Boolean? no_end
    Boolean? no_start
    Int? q_format
  }
  command <<<
    sequenza_utils pileup2acgt \
      ~{if defined(m_pile_up) then ("--mpileup " +  '"' + m_pile_up + '"') else ""} \
      ~{if defined(name_use_compression) then ("--output " +  '"' + name_use_compression + '"') else ""} \
      ~{if defined(minimum_required_read) then ("-n " +  '"' + minimum_required_read + '"') else ""} \
      ~{if defined(q_limit) then ("--qlimit " +  '"' + q_limit + '"') else ""} \
      ~{if (no_end) then "--no-end" else ""} \
      ~{if (no_start) then "--no-start" else ""} \
      ~{if defined(q_format) then ("--qformat " +  '"' + q_format + '"') else ""}
  >>>
  parameter_meta {
    m_pile_up: "Name of the input mpileup (SAMtools) file. If the\\nfilename ends in .gz it will be opened in gzip mode.\\nIf the file name is - it will be read from STDIN."
    name_use_compression: "Name of the output file. To use gzip compression name\\nthe file ending in .gz. Default STDOUT."
    minimum_required_read: "The minimum required read depth on a position to test\\nfor mutation."
    q_limit: "Minimum nucleotide quality score filter."
    no_end: "Discard the base located at the end of the read"
    no_start: "Discard the base located at the start of the read"
    q_format: "Quality format, options are \\\"sanger\\\" or \\\"illumina\\\".\\nThis will add an offset of 33 or 64 respectively to\\nthe qlimit value.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_use_compression = "${in_name_use_compression}"
  }
}