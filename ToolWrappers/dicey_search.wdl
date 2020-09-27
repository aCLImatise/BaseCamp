version 1.0

task DiceySearch {
  input {
    Boolean? arg_genome_file
    Boolean? arg_primer_config
    File? arg_output_file
    Boolean? arg_kmer_size
    Boolean? arg_max_number
    Boolean? arg_neighborhood_size
    Boolean? arg_neighborhood_distance
    Boolean? arg_prune_threshold
    Boolean? use_hamming_neighborhood
    Boolean? arg_min_temperature
    Boolean? arg_product_size
    Int? cut_off_penalty
    Float? penalty_tm_diff
    Float? penalty_tm_mismatch
    Int? penalty_length
    Int? ent_temp
    Int? monovalent
    Int? dna
    String mmol
    String nmol
  }
  command <<<
    dicey search \
      ~{mmol} \
      ~{nmol} \
      ~{if (arg_genome_file) then "-g" else ""} \
      ~{if (arg_primer_config) then "-i" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_kmer_size) then "-k" else ""} \
      ~{if (arg_max_number) then "-m" else ""} \
      ~{if (arg_neighborhood_size) then "-x" else ""} \
      ~{if (arg_neighborhood_distance) then "-d" else ""} \
      ~{if (arg_prune_threshold) then "-q" else ""} \
      ~{if (use_hamming_neighborhood) then "-n" else ""} \
      ~{if (arg_min_temperature) then "-c" else ""} \
      ~{if (arg_product_size) then "-l" else ""} \
      ~{if defined(cut_off_penalty) then ("--cutoffPenalty " +  '"' + cut_off_penalty + '"') else ""} \
      ~{if defined(penalty_tm_diff) then ("--penaltyTmDiff " +  '"' + penalty_tm_diff + '"') else ""} \
      ~{if defined(penalty_tm_mismatch) then ("--penaltyTmMismatch " +  '"' + penalty_tm_mismatch + '"') else ""} \
      ~{if defined(penalty_length) then ("--penaltyLength " +  '"' + penalty_length + '"') else ""} \
      ~{if defined(ent_temp) then ("--enttemp " +  '"' + ent_temp + '"') else ""} \
      ~{if defined(monovalent) then ("--monovalent " +  '"' + monovalent + '"') else ""} \
      ~{if defined(dna) then ("--dna " +  '"' + dna + '"') else ""}
  >>>
  parameter_meta {
    arg_genome_file: "[ --genome ] arg                   genome file"
    arg_primer_config: "[ --config ] arg (=\\\"./src/primer3_config/\\\")\\nprimer3 config directory"
    arg_output_file: "[ --outfile ] arg                  output file"
    arg_kmer_size: "[ --kmer ] arg (=15)               k-mer size"
    arg_max_number: "[ --maxmatches ] arg (=10000)      max. number of matches per k-mer"
    arg_neighborhood_size: "[ --maxNeighborhood ] arg (=10000) max. neighborhood size"
    arg_neighborhood_distance: "[ --distance ] arg (=1)            neighborhood distance"
    arg_prune_threshold: "[ --pruneprimer ] arg              prune primer threshold"
    use_hamming_neighborhood: "[ --hamming ]                      use hamming neighborhood instead of\\nedit distance"
    arg_min_temperature: "[ --cutTemp ] arg (=45)            min. primer melting temperature"
    arg_product_size: "[ --maxProdSize ] arg (=15000)     max. PCR Product size"
    cut_off_penalty: "(=-1)             max. penalty for products (-1 = keep\\nall)"
    penalty_tm_diff: "(=0.59999999999999998)\\nmultiplication factor for deviation of\\nprimer Tm penalty"
    penalty_tm_mismatch: "(=0.40000000000000002)\\nmultiplication factor for Tm pair\\ndifference penalty"
    penalty_length: "(=0.001)          multiplication factor for amplicon\\nlength penalty"
    ent_temp: "(=37)                   temperature for entropie and entalpie\\ncalculation in Celsius"
    monovalent: "(=50)                concentration of monovalent ions in"
    dna: "(=50)                       concentration of annealing(!) Oligos in"
    mmol: "--divalent arg (=1.5)                 concentration of divalent ions in mMol"
    nmol: "--dntp arg (=0.59999999999999998)     the sum  of all dNTPs in mMol"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}