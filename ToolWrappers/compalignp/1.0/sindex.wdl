version 1.0

task Sindex {
  input {
    File? output_ssi_index
    Boolean? force_index_mode
    Boolean? external
    File? in_format
    Boolean? pfam_seq
    Boolean? options
    String available
  }
  command <<<
    sindex \
      ~{available} \
      ~{if defined(output_ssi_index) then ("-o " +  '"' + output_ssi_index + '"') else ""} \
      ~{if (force_index_mode) then "--64" else ""} \
      ~{if (external) then "--external" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (pfam_seq) then "--pfamseq" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    output_ssi_index: ": output the SSI index to file named <f>"
    force_index_mode: ": force index mode to 64-bit, even on small files"
    external: ": force index compilation to use external (on-disk) sorting"
    in_format: ": specify input sequence file format <s>"
    pfam_seq: ": index a FASTA file with >(name) (accession) (desc)"
    options: ""
    available: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_ssi_index = "${in_output_ssi_index}"
  }
}