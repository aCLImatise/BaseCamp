version 1.0

task Biotdg {
  input {
    String? reference
    File? vcf
    File? ploidy_table
    File? sample_name
    Int? random_seed
    Int? read_length
    String? coverage
    Int? read_one_error_rate
    Int? read_two_error_rate
    Int? maximum_n_number
  }
  command <<<
    biotdg \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(ploidy_table) then ("--ploidy-table " +  '"' + ploidy_table + '"') else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(read_one_error_rate) then ("--read1-error-rate " +  '"' + read_one_error_rate + '"') else ""} \
      ~{if defined(read_two_error_rate) then ("--read2-error-rate " +  '"' + read_two_error_rate + '"') else ""} \
      ~{if defined(maximum_n_number) then ("--maximum-n-number " +  '"' + maximum_n_number + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "Reference genome for the sample."
    vcf: "VCF file with mutations."
    ploidy_table: "Tab-delimited file with two columns specifying the\\nchromosome name and its ploidy. By default all\\nchromosomes have a ploidy of 2."
    sample_name: "Name of the sample to generate. The sample must be in\\nthe VCF file."
    random_seed: "Random seed for dwgsim (default: 1)."
    read_length: "Read length to be used by dwgsim."
    coverage: "Average coverage for the generated reads. NOTE: This\\nis multiplied by the ploidy of the chromosome."
    read_one_error_rate: "Same as -e flag in dwgsim. per base/color/flow error\\nrate of the first read."
    read_two_error_rate: "Same as -E flag in dwgsim. per base/color/flow error\\nrate of the second read."
    maximum_n_number: "Maximum number of Ns allowed in a given read."
  }
  output {
    File out_stdout = stdout()
  }
}