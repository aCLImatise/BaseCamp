version 1.0

task NanopolishMethyltrain {
  input {
    Boolean? verbose
    File? models_fof_n
    String? train_km_ers
    Boolean? calibrate
    Boolean? no_update_models
    Boolean? output_scores
    File? reads
    File? bam
    File? genome
    Int? threads
    Int? filter_policy
    String? out_suffix
    File? out_fof_n
    Int? rounds
    Int? max_reads
    Boolean? progress
    Boolean? std_v
    Int? max_events
  }
  command <<<
    nanopolish methyltrain \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(models_fof_n) then ("--models-fofn " +  '"' + models_fof_n + '"') else ""} \
      ~{if defined(train_km_ers) then ("--train-kmers " +  '"' + train_km_ers + '"') else ""} \
      ~{if (calibrate) then "--calibrate" else ""} \
      ~{if (no_update_models) then "--no-update-models" else ""} \
      ~{if (output_scores) then "--output-scores" else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(filter_policy) then ("--filter-policy " +  '"' + filter_policy + '"') else ""} \
      ~{if defined(out_suffix) then ("--out-suffix " +  '"' + out_suffix + '"') else ""} \
      ~{if defined(out_fof_n) then ("--out-fofn " +  '"' + out_fof_n + '"') else ""} \
      ~{if defined(rounds) then ("--rounds " +  '"' + rounds + '"') else ""} \
      ~{if defined(max_reads) then ("--max-reads " +  '"' + max_reads + '"') else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (std_v) then "--stdv" else ""} \
      ~{if defined(max_events) then ("--max-events " +  '"' + max_events + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    models_fof_n: "read the models to be trained from the FOFN"
    train_km_ers: "train methylated, unmethylated or all kmers"
    calibrate: "recalibrate aligned reads to model before training"
    no_update_models: "do not write out trained models"
    output_scores: "optionally output read scores during training"
    reads: "the ONT reads are in fasta FILE"
    bam: "the reads aligned to the genome assembly are in bam FILE"
    genome: "the reference genome is in FILE"
    threads: "use NUM threads (default: 1)"
    filter_policy: "filter reads for [R7] or [R9] project"
    out_suffix: "name output files like <strand>.out_suffix"
    out_fof_n: "write the names of the output models into FILE"
    rounds: "number of training rounds to perform"
    max_reads: "stop after processing NUM reads in each round"
    progress: "print out a progress message"
    std_v: "enable stdv modelling"
    max_events: "use NUM events for training (default: 1000)"
  }
  output {
    File out_stdout = stdout()
    File out_out_fof_n = "${in_out_fof_n}"
  }
}