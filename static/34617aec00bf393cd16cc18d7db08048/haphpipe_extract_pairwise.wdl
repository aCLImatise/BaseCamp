version 1.0

task HaphpipeExtractPairwise {
  input {
    String? align_json
    String? outfile
    String? out_fmt
    String? ref_reg
    Boolean? debug
  }
  command <<<
    haphpipe extract_pairwise \
      ~{if defined(align_json) then ("--align_json " +  '"' + align_json + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{if defined(ref_reg) then ("--refreg " +  '"' + ref_reg + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    align_json: "JSON file describing alignment (output of pairwise_align stage)"
    outfile: "Output file. Default is stdout"
    out_fmt: "Format for output (default: nuc_fa)"
    ref_reg: "Reference region. String format is ref:start-stop. For example, the region string to extract pol when aligned to HXB2 is HIV_B.K03455.HXB2:2085-5096"
    debug: "Print commands but do not run (default: False)"
  }
}