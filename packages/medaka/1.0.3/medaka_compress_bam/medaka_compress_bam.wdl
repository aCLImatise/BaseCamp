version 1.0

task MedakaCompressBam {
  input {
    Boolean? debug
    Boolean? quiet
    Int? threads
    Array[String] regions
    Int? use_fast_five_info
    String bam_input
    String bam_output
    String ref_fname
  }
  command <<<
    medaka compress_bam \
      ~{bam_input} \
      ~{bam_output} \
      ~{ref_fname} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(use_fast_five_info) then ("--use_fast5_info " +  '"' + use_fast_five_info + '"') else ""}
  >>>
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    threads: "Number of threads for parallel execution. (default: 1)"
    regions: "Genomic regions to analyse, or .bed file. (default:\\nNone)"
    use_fast_five_info: "<index> <fast5_dir> <index>\\nRoot directory containing the fast5 files and .tsv\\nfile with columns filename and read_id. (default:\\nNone)\\n"
    bam_input: "Bam file to compress."
    bam_output: "Output bam file."
    ref_fname: "Reference fasta file used for `bam_input`."
  }
  output {
    File out_stdout = stdout()
  }
}