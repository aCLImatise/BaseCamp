version 1.0

task Hmmalign {
  input {
    File? output_alignment_file
    File? map_ali
    Boolean? trim
    Boolean? amino
    Boolean? dna
    Boolean? rna
    String? in_format
    String? out_format
    Boolean? options
  }
  command <<<
    hmmalign \
      ~{if defined(output_alignment_file) then ("-o " +  '"' + output_alignment_file + '"') else ""} \
      ~{if defined(map_ali) then ("--mapali " +  '"' + map_ali + '"') else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if (options) then "-options" else ""}
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
  output {
    File out_stdout = stdout()
    File out_output_alignment_file = "${in_output_alignment_file}"
  }
}