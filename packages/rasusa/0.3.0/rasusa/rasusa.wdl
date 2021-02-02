version 1.0

task Rasusa {
  input {
    Boolean? switch_on_verbosity
    String? coverage
    Int? genome_size
    File? fast_files_subsample
    File? output_files_stdout
    String? seed
  }
  command <<<
    rasusa \
      ~{if (switch_on_verbosity) then "-v" else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(fast_files_subsample) then ("--input " +  '"' + fast_files_subsample + '"') else ""} \
      ~{if defined(output_files_stdout) then ("--output " +  '"' + output_files_stdout + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    switch_on_verbosity: "Switch on verbosity."
    coverage: "The desired coverage to sub-sample the reads to."
    genome_size: "Size of the genome to calculate coverage with respect to. i.e 4.3kb, 7Tb, 9000,\\n4.1MB etc."
    fast_files_subsample: "...             The fast{a,q} file(s) to subsample. For paired Illumina you may either pass this\\nflag twice `-i r1.fq -i r2.fq` or give two files consecutively `-i r1.fq r2.fq`."
    output_files_stdout: "...           Output file(s), stdout if not present. For paired Illumina you may either pass\\nthis flag twice `-o o1.fq -o o2.fq` or give two files consecutively `-o o1.fq\\no2.fq`. NOTE: The order of the pairs is assumed to be the same as that given for\\n--input. This option is required for paired input."
    seed: "Random seed to use."
  }
  output {
    File out_stdout = stdout()
  }
}