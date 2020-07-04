version 1.0

task FilterEukBins.py {
  input {
    String? path_output_table
    String? tempdir
    Int? min_l
    String? e_uk_ratio
    String? bac_ratio
    Int? min_bp
    Int? min_bpe_uks
    Boolean? rerun
    Boolean? quiet
    Boolean? debug
    String bins
  }
  command <<<
    filter_euk_bins.py \
      ~{bins} \
      ~{if defined(path_output_table) then ("--output " +  '"' + path_output_table + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(min_l) then ("--minl " +  '"' + min_l + '"') else ""} \
      ~{if defined(e_uk_ratio) then ("--eukratio " +  '"' + e_uk_ratio + '"') else ""} \
      ~{if defined(bac_ratio) then ("--bacratio " +  '"' + bac_ratio + '"') else ""} \
      ~{if defined(min_bp) then ("--minbp " +  '"' + min_bp + '"') else ""} \
      ~{if defined(min_bpe_uks) then ("--minbpeuks " +  '"' + min_bpe_uks + '"') else ""} \
      ~{true="--rerun" false="" rerun} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    path_output_table: "path for the output table"
    tempdir: "Will save temp files of the analysis here"
    min_l: "define minimal length of contig for EukRep to classify (default: 1500)"
    e_uk_ratio: "This ratio of eukaryotic DNA to all DNA has to be found at least (default: 0)"
    bac_ratio: "discard bins with bacterial ratio of higher than (default: 1)"
    min_bp: "Only keep bins with at least n bp of dna (default: 100000)"
    min_bpe_uks: "Only keep bins with at least n bp of Eukaryotic dna (default: 1000000)"
    rerun: "rerun even if output exists"
    quiet: "supress information"
    debug: "Make it more verbose"
    bins: "all bins to classify"
  }
}