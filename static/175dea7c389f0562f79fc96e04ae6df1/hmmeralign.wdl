version 1.0

task Hmmeralign {
  input {
    String? output_alignment_file
    String? map_ali
    Boolean? trim
    Boolean? amino
    Boolean? dna
    Boolean? rna
    String? in_format
    String? out_format
    Boolean? options
  }
  command <<<
    hmmeralign \
      ~{if defined(output_alignment_file) then ("-o " +  '"' + output_alignment_file + '"') else ""} \
      ~{if defined(map_ali) then ("--mapali " +  '"' + map_ali + '"') else ""} \
      ~{true="--trim" false="" trim} \
      ~{true="--amino" false="" amino} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    output_alignment_file: ": output alignment to file <f>, not stdout"
    map_ali: ": include alignment in file <f> (same ali that HMM came from)"
    trim: ": trim terminal tails of nonaligned residues from alignment"
    amino: ": assert <seqfile>, <hmmfile> both protein: no autodetection"
    dna: ": assert <seqfile>, <hmmfile> both DNA: no autodetection"
    rna: ": assert <seqfile>, <hmmfile> both RNA: no autodetection"
    in_format: ": assert <seqfile> is in format <s>: no autodetection"
    out_format: ": output alignment in format <s>  [Stockholm]"
    options: ""
  }
}