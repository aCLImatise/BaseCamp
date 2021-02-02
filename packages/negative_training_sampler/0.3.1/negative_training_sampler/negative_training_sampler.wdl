version 1.0

task NegativeTrainingSampler {
  input {
    File? label_file
    File? reference_file
    File? genome_file
    File? output_file
    Int? label_num
    Int? precision
    Boolean? b_gzip
    File? log
    Boolean? verbose
    Int? seed
    Int? cores
    Int? memory
  }
  command <<<
    negative_training_sampler \
      ~{if defined(label_file) then ("--label-file " +  '"' + label_file + '"') else ""} \
      ~{if defined(reference_file) then ("--reference-file " +  '"' + reference_file + '"') else ""} \
      ~{if defined(genome_file) then ("--genome-file " +  '"' + genome_file + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(label_num) then ("--label_num " +  '"' + label_num + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if (b_gzip) then "--bgzip" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""}
  >>>
  parameter_meta {
    label_file: "Input bed file with labeled regions  [required]"
    reference_file: "Input genome reference in fasta format\\n[required]"
    genome_file: "Input genome file of reference  [required]"
    output_file: "Path to output file."
    label_num: "Number of separate label columns."
    precision: "Precision of decimals when computing the\\nattributes like GC content."
    b_gzip: "Output will be bgzipped."
    log: "Write logging to this file."
    verbose: "Will print verbose messages."
    seed: "Sets the seed for sampling."
    cores: "number of used cores default: 1"
    memory: "amount of memory per core (e.g. 2 cores * 2GB =\\n4GB) default: 2GB"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}