version 1.0

task SequenzaUtilsPileup2acgt {
  input {
    String? m_pile_up
    String? name_output_file
    String? minimum_required_read
    String? q_limit
    Boolean? no_end
    Boolean? no_start
    String? q_format
  }
  command <<<
    sequenza-utils pileup2acgt \
      ~{if defined(m_pile_up) then ("--mpileup " +  '"' + m_pile_up + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(minimum_required_read) then ("-n " +  '"' + minimum_required_read + '"') else ""} \
      ~{if defined(q_limit) then ("--qlimit " +  '"' + q_limit + '"') else ""} \
      ~{true="--no-end" false="" no_end} \
      ~{true="--no-start" false="" no_start} \
      ~{if defined(q_format) then ("--qformat " +  '"' + q_format + '"') else ""}
  >>>
  parameter_meta {
    m_pile_up: "Name of the input mpileup (SAMtools) file. If the filename ends in .gz it will be opened in gzip mode. If the file name is - it will be read from STDIN."
    name_output_file: "Name of the output file. To use gzip compression name the file ending in .gz. Default STDOUT."
    minimum_required_read: "The minimum required read depth on a position to test for mutation."
    q_limit: "Minimum nucleotide quality score filter."
    no_end: "Discard the base located at the end of the read"
    no_start: "Discard the base located at the start of the read"
    q_format: "Quality format, options are \"sanger\" or \"illumina\". This will add an offset of 33 or 64 respectively to the qlimit value."
  }
}