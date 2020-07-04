version 1.0

task TOBIASBINDetect {
  input {
    Boolean? signals
    String? peaks
    Boolean? motifs
    String? genome
    Boolean? cond_names
    File? peak_header
    String? naming
    Float? motif_p_value
    Float? bound_p_value
    Float? pseudo
    Boolean? time_series
    Boolean? skip_excel
    String? prefix
    Directory? outdir
    Int? cores
    Int? split
    Int? verbosity
  }
  command <<<
    TOBIAS BINDetect \
      ~{true="--signals" false="" signals} \
      ~{if defined(peaks) then ("--peaks " +  '"' + peaks + '"') else ""} \
      ~{true="--motifs" false="" motifs} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{true="--cond-names" false="" cond_names} \
      ~{if defined(peak_header) then ("--peak-header " +  '"' + peak_header + '"') else ""} \
      ~{if defined(naming) then ("--naming " +  '"' + naming + '"') else ""} \
      ~{if defined(motif_p_value) then ("--motif-pvalue " +  '"' + motif_p_value + '"') else ""} \
      ~{if defined(bound_p_value) then ("--bound-pvalue " +  '"' + bound_p_value + '"') else ""} \
      ~{if defined(pseudo) then ("--pseudo " +  '"' + pseudo + '"') else ""} \
      ~{true="--time-series" false="" time_series} \
      ~{true="--skip-excel" false="" skip_excel} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    signals: "[<bigwig> [<bigwig> ...]] Signal per condition (.bigwig format)"
    peaks: "Peaks.bed containing open chromatin regions across all conditions"
    motifs: "[<motifs> [<motifs> ...]] Motif file(s) in pfm/jaspar/meme format"
    genome: "Genome .fasta file"
    cond_names: "[<name> [<name> ...]] Names of conditions fitting to --signals (default: prefix of --signals)"
    peak_header: "File containing the header of --peaks separated by whitespace or newlines (default: peak columns are named \"_additional_<count>\")"
    naming: "Naming convention for TF output files ('id', 'name', 'name_id', 'id_name') (default: 'name_id')"
    motif_p_value: "Set p-value threshold for motif scanning (default: 1e-4)"
    bound_p_value: "Set p-value threshold for bound/unbound split (default: 0.001)"
    pseudo: "Pseudocount for calculating log2fcs (default: estimated from data)"
    time_series: "Will only compare signals1<->signals2<->signals3 (...) in order of input, and skip all-against-all comparison."
    skip_excel: "Skip creation of excel files - for large datasets, this will speed up BINDetect considerably"
    prefix: "Prefix for overview files in --outdir folder (default: bindetect)"
    outdir: "Output directory to place TFBS/plots in (default: bindetect_output)"
    cores: "Number of cores to use for computation (default: 1)"
    split: "Split of multiprocessing jobs (default: 100)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}