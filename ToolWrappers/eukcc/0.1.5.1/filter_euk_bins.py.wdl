version 1.0

task FilterEukBinspy {
  input {
    File? path_output_table
    String? tempdir
    Int? min_l
    Int? e_uk_ratio
    Int? bac_ratio
    Int? min_bp
    Int? min_bpe_uks
    Boolean? rerun
    Boolean? quiet
    Boolean? debug
    String bins
  }
  command <<<
    filter_euk_bins_py \
      ~{bins} \
      ~{if defined(path_output_table) then ("--output " +  '"' + path_output_table + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(min_l) then ("--minl " +  '"' + min_l + '"') else ""} \
      ~{if defined(e_uk_ratio) then ("--eukratio " +  '"' + e_uk_ratio + '"') else ""} \
      ~{if defined(bac_ratio) then ("--bacratio " +  '"' + bac_ratio + '"') else ""} \
      ~{if defined(min_bp) then ("--minbp " +  '"' + min_bp + '"') else ""} \
      ~{if defined(min_bpe_uks) then ("--minbpeuks " +  '"' + min_bpe_uks + '"') else ""} \
      ~{if (rerun) then "--rerun" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    path_output_table: "path for the output table"
    tempdir: "Will save temp files of the analysis here"
    min_l: "define minimal length of contig for EukRep to classify\\n(default: 1500)"
    e_uk_ratio: "This ratio of eukaryotic DNA to all DNA has to be\\nfound at least (default: 0)"
    bac_ratio: "discard bins with bacterial ratio of higher than\\n(default: 1)"
    min_bp: "Only keep bins with at least n bp of dna (default:\\n100000)"
    min_bpe_uks: "Only keep bins with at least n bp of Eukaryotic dna\\n(default: 1000000)"
    rerun: "rerun even if output exists"
    quiet: "supress information"
    debug: "Make it more verbose"
    bins: "all bins to classify"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_table = "${in_path_output_table}"
  }
}