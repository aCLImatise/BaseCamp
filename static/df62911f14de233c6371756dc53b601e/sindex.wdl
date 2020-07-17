version 1.0

task Sindex {
  input {
    String? output_ssi_index
    Boolean? force_index_mode
    Boolean? external
    String? in_format
    Boolean? pfam_seq
    Boolean? options
    String available
  }
  command <<<
    sindex \
      ~{available} \
      ~{if defined(output_ssi_index) then ("-o " +  '"' + output_ssi_index + '"') else ""} \
      ~{true="--64" false="" force_index_mode} \
      ~{true="--external" false="" external} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--pfamseq" false="" pfam_seq} \
      ~{true="-options" false="" options}
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
}