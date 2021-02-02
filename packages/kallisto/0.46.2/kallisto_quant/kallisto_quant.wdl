version 1.0

task KallistoQuant {
  input {
    File? index
    Directory? output_dir
    Boolean? bias
    Int? bootstrap_samples
    Int? fragment_length
    Int? sd
    Int? threads
    Boolean? gtf
    Boolean? chromosomes
    Boolean? verbose
    String? arguments
    String fast_q_files
  }
  command <<<
    kallisto quant \
      ~{arguments} \
      ~{fast_q_files} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (bias) then "--bias" else ""} \
      ~{if defined(bootstrap_samples) then ("--bootstrap-samples " +  '"' + bootstrap_samples + '"') else ""} \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(sd) then ("--sd " +  '"' + sd + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (chromosomes) then "--chromosomes" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    index: "Filename for the kallisto index to be used for\\nquantification"
    output_dir: "Directory to write output to"
    bias: "Perform sequence based bias correction"
    bootstrap_samples: "Number of bootstrap samples (default: 0)\\n--seed=INT                Seed for the bootstrap sampling (default: 42)\\n--plaintext               Output plaintext instead of HDF5\\n--fusion                  Search for fusions for Pizzly\\n--single                  Quantify single-end reads\\n--single-overhang         Include reads where unobserved rest of fragment is\\npredicted to lie outside a transcript\\n--fr-stranded             Strand specific reads, first read forward\\n--rf-stranded             Strand specific reads, first read reverse"
    fragment_length: "Estimated average fragment length"
    sd: "Estimated standard deviation of fragment length\\n(default: -l, -s values are estimated from paired\\nend data, but are required when using --single)"
    threads: "Number of threads to use (default: 1)\\n--pseudobam               Save pseudoalignments to transcriptome to BAM file\\n--genomebam               Project pseudoalignments to genome sorted BAM file"
    gtf: "GTF file for transcriptome information\\n(required for --genomebam)"
    chromosomes: "Tab separated file with chromosome names and lengths\\n(optional for --genomebam, but recommended)"
    verbose: "Print out progress information every 1M proccessed reads"
    arguments: ""
    fast_q_files: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}