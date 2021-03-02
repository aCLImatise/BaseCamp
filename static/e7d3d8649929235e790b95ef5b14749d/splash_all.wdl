version 1.0

task SplashAll {
  input {
    File? reference
    File? bed
    Int? read_length
    Directory? output_dir
    String? snp_rate
    Int? read_coverage
    String? sequencing_error
    String? pulse
    String? rates
    String? chase
    String? tc_rate
    Int? min_half_life
    Int? max_half_life
    Int? threads
    Int? replicates
    Boolean? skip_turnover
  }
  command <<<
    splash all \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(snp_rate) then ("--snp-rate " +  '"' + snp_rate + '"') else ""} \
      ~{if defined(read_coverage) then ("--read-coverage " +  '"' + read_coverage + '"') else ""} \
      ~{if defined(sequencing_error) then ("--sequencing-error " +  '"' + sequencing_error + '"') else ""} \
      ~{if defined(pulse) then ("--pulse " +  '"' + pulse + '"') else ""} \
      ~{if defined(rates) then ("--rates " +  '"' + rates + '"') else ""} \
      ~{if defined(chase) then ("--chase " +  '"' + chase + '"') else ""} \
      ~{if defined(tc_rate) then ("--tc-rate " +  '"' + tc_rate + '"') else ""} \
      ~{if defined(min_half_life) then ("--min-halflife " +  '"' + min_half_life + '"') else ""} \
      ~{if defined(max_half_life) then ("--max-halflife " +  '"' + max_half_life + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(replicates) then ("--replicates " +  '"' + replicates + '"') else ""} \
      ~{if (skip_turnover) then "--skip-turnover" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "Reference fasta file"
    bed: "BED file"
    read_length: "All UTRs short than the read length are removed."
    output_dir: "Output directory for mapped BAM files."
    snp_rate: "SNP rate in UTRs"
    read_coverage: "Read coverage (if read number is not specified)"
    sequencing_error: "Sequencing error"
    pulse: "Pulse in minutes"
    rates: "List of rates"
    chase: "Chase in minutes"
    tc_rate: "T->C conversion rate"
    min_half_life: "Lower bound for the simulated half lifes in minutes"
    max_half_life: "Upper bound for the simulated half lifes in minutes"
    threads: "Thread number"
    replicates: "Number of replicates"
    skip_turnover: "Take half-life from score filed of input BED file"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}