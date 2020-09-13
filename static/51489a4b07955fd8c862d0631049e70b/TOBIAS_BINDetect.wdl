version 1.0

task TOBIASBINDetect {
  input {
    Boolean? signals
    String? peaks
    File? genome
    Boolean? cond_names
    File? peak_header
    String? naming
    Float? motif_p_value
    Float? bound_p_value
    Float? pseudo
    Boolean? time_series
    Boolean? skip_excel
    Directory? prefix
    Directory? outdir
    Int? cores
    Int? split
    Int? verbosity
    String conditions
  }
  command <<<
    TOBIAS BINDetect \
      ~{conditions} \
      ~{if (signals) then "--signals" else ""} \
      ~{if defined(peaks) then ("--peaks " +  '"' + peaks + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (cond_names) then "--cond-names" else ""} \
      ~{if defined(peak_header) then ("--peak-header " +  '"' + peak_header + '"') else ""} \
      ~{if defined(naming) then ("--naming " +  '"' + naming + '"') else ""} \
      ~{if defined(motif_p_value) then ("--motif-pvalue " +  '"' + motif_p_value + '"') else ""} \
      ~{if defined(bound_p_value) then ("--bound-pvalue " +  '"' + bound_p_value + '"') else ""} \
      ~{if defined(pseudo) then ("--pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (time_series) then "--time-series" else ""} \
      ~{if (skip_excel) then "--skip-excel" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    signals: "[<bigwig> [<bigwig> ...]]\\nSignal per condition (.bigwig format)"
    peaks: "Peaks.bed containing open chromatin regions across all"
    genome: "Genome .fasta file"
    cond_names: "[<name> [<name> ...]]\\nNames of conditions fitting to --signals (default:\\nprefix of --signals)"
    peak_header: "File containing the header of --peaks separated by\\nwhitespace or newlines (default: peak columns are named\\n\\\"_additional_<count>\\\")"
    naming: "Naming convention for TF output files ('id', 'name',\\n'name_id', 'id_name') (default: 'name_id')"
    motif_p_value: "Set p-value threshold for motif scanning (default:\\n1e-4)"
    bound_p_value: "Set p-value threshold for bound/unbound split (default:\\n0.001)"
    pseudo: "Pseudocount for calculating log2fcs (default: estimated\\nfrom data)"
    time_series: "Will only compare signals1<->signals2<->signals3 (...)\\nin order of input, and skip all-against-all comparison."
    skip_excel: "Skip creation of excel files - for large datasets, this\\nwill speed up BINDetect considerably"
    prefix: "Prefix for overview files in --outdir folder (default:\\nbindetect)"
    outdir: "Output directory to place TFBS/plots in (default:\\nbindetect_output)"
    cores: "Number of cores to use for computation (default: 1)"
    split: "Split of multiprocessing jobs (default: 100)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings,\\n2: info, 3: stats, 4: debug, 5: spam) (default: 3)\\n"
    conditions: "--motifs [<motifs> [<motifs> ...]]"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}