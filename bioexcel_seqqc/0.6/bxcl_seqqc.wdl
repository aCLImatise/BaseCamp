version 1.0

task BxclSeqqc {
  input {
    String? files
    File? outdir
    File? tmpdir
    String? threads
    String? adapt_seq
    String? qc_conf
    String? trim
    Boolean? print_config
    String? fone
  }
  command <<<
    bxcl_seqqc \
      ~{fone} \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(adapt_seq) then ("--adaptseq " +  '"' + adapt_seq + '"') else ""} \
      ~{if defined(qc_conf) then ("--qcconf " +  '"' + qc_conf + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{true="--printconfig" false="" print_config}
  >>>
  parameter_meta {
    files: "F1    Pair of input FastQ files."
    outdir: "Output directory. (default: current directory)"
    tmpdir: "Temp directory. (default: system tmp location)"
    threads: "Max number of threads to use. NOTE: not allstages use all threads. (default: 2)"
    adapt_seq: "The adapter sequence to be trimmed from the FastQ file. (default: Illumina TruSeq Universal Adapter)"
    qc_conf: "Location of config file. (default: internal config)"
    trim: "The type of trimming to be done on the paired sequences: [A]dapter or [Q]uality trimming, or [F]ull/both. WARNING: For standalone execution of runtrim only! (default: [F]ull)"
    print_config: "Print example config files to current directory."
    fone: ""
  }
}