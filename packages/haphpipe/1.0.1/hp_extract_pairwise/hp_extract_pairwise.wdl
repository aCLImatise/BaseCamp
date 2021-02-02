version 1.0

task HpExtractPairwise {
  input {
    File? align_json
    File? outfile
    String? out_fmt
    String? ref_reg
    Boolean? debug
  }
  command <<<
    hp_extract_pairwise \
      ~{if defined(align_json) then ("--align_json " +  '"' + align_json + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{if defined(ref_reg) then ("--refreg " +  '"' + ref_reg + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    align_json: "JSON file describing alignment (output of\\npairwise_align stage)"
    outfile: "Output file. Default is stdout"
    out_fmt: "Format for output (default: nuc_fa)"
    ref_reg: "Reference region. String format is ref:start-stop. For\\nexample, the region string to extract pol when aligned\\nto HXB2 is HIV_B.K03455.HXB2:2085-5096"
    debug: "Print commands but do not run (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_align_json = "${in_align_json}"
    File out_outfile = "${in_outfile}"
  }
}