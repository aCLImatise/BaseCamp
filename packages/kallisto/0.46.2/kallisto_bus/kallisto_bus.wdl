version 1.0

task KallistoBus {
  input {
    File? index
    Directory? output_dir
    String? technology
    Boolean? list
    Int? threads
    Boolean? bam
    Boolean? num
    String? arguments
    String fast_q_files
  }
  command <<<
    kallisto bus \
      ~{arguments} \
      ~{fast_q_files} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(technology) then ("--technology " +  '"' + technology + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (num) then "--num" else ""}
  >>>
  parameter_meta {
    index: "Filename for the kallisto index to be used for\\npseudoalignment"
    output_dir: "Directory to write output to"
    technology: "Single-cell technology used"
    list: "List all single-cell technologies supported"
    threads: "Number of threads to use (default: 1)"
    bam: "Input file is a BAM file"
    num: "Output number of read in flag column (incompatible with --bam)\\n--verbose                 Print out progress information every 1M proccessed reads\\n"
    arguments: ""
    fast_q_files: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}