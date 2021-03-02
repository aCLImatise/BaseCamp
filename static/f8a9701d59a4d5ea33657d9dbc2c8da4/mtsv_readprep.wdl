version 1.0

task Mtsvreadprep {
  input {
    Boolean? lcd
    Boolean? lcd_qual
    Boolean? include_flag_trigger
    File? adapters
    Int? adapter_tolerance
    File? out
    Int? threads
    Int? quality_min
    Int? quality_threshold
    Int? segment
    String? flags
    String fast_q
  }
  command <<<
    mtsv_readprep \
      ~{flags} \
      ~{fast_q} \
      ~{if (lcd) then "--lcd" else ""} \
      ~{if (lcd_qual) then "--lcdqual" else ""} \
      ~{if (include_flag_trigger) then "-v" else ""} \
      ~{if defined(adapters) then ("--adapters " +  '"' + adapters + '"') else ""} \
      ~{if defined(adapter_tolerance) then ("--adapter-tolerance " +  '"' + adapter_tolerance + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(quality_min) then ("--quality_min " +  '"' + quality_min + '"') else ""} \
      ~{if defined(quality_threshold) then ("--quality_threshold " +  '"' + quality_threshold + '"') else ""} \
      ~{if defined(segment) then ("--segment " +  '"' + segment + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    lcd: "Enable LCD trim mode (takes first N bases of each read, where N = shortest read length in FASTQ\\nfiles)."
    lcd_qual: "Enable LCDQ trim mode (takes highest quality N bases of each read, where N = shortest read length\\nin FASTQ files)."
    include_flag_trigger: "Include this flag to trigger debug-level logging."
    adapters: "Path to file containing adapters, one per line."
    adapter_tolerance: "Number of adapter characters to tolerate at start of reads."
    out: "Path to desired output FASTA file."
    threads: "Number of worker threads to spawn. [default: 4]"
    quality_min: "Minimum FASTQ quality to tolerate per base."
    quality_threshold: "Maximum number of bases below minimum quality to tolerate per read."
    segment: "Enable SEG trim mode (takes subsequent N length subsequences of each read)."
    flags: ""
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}