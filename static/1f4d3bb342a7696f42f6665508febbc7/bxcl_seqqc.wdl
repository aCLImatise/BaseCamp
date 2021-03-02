version 1.0

task BxclSeqqc {
  input {
    Int? files
    Directory? outdir
    File? tmpdir
    Int? threads
    File? adapt_seq
    File? qc_conf
    String? trim
    Boolean? print_config
    Int? fone
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
      ~{if (print_config) then "--printconfig" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    files: "F1    Pair of input FastQ files."
    outdir: "Output directory. (default: current directory)"
    tmpdir: "Temp directory. (default: system tmp location)"
    threads: "Max number of threads to use. NOTE: not allstages use\\nall threads. (default: 2)"
    adapt_seq: "The adapter sequence to be trimmed from the FastQ file.\\n(default: Illumina TruSeq Universal Adapter)"
    qc_conf: "Location of config file. (default: internal config)"
    trim: "The type of trimming to be done on the paired\\nsequences: [A]dapter or [Q]uality trimming, or\\n[F]ull/both. WARNING: For standalone execution of\\nruntrim only! (default: [F]ull)"
    print_config: "Print example config files to current directory."
    fone: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}