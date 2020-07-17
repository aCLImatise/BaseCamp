version 1.0

task DiceySearch {
  input {
    Boolean? arg_genome_file
    Boolean? arg_primer_config
    Boolean? arg_output_file
    Boolean? arg_kmer_size
    Boolean? arg_max_number
    Boolean? arg_neighborhood_size
    Boolean? arg_neighborhood_distance
    Boolean? arg_prune_primer
    Boolean? use_hamming_neighborhood
    Boolean? arg_min_temperature
    Boolean? arg_max_pcr
    String? cut_off_penalty
    String? penalty_tm_diff
    String? penalty_tm_mismatch
    String? penalty_length
    String? ent_temp
    String? monovalent
    String? divalent
    String? dna
    String? dntp
    String sequences_dot_fast_a
  }
  command <<<
    dicey search \
      ~{sequences_dot_fast_a} \
      ~{true="-g" false="" arg_genome_file} \
      ~{true="-i" false="" arg_primer_config} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-k" false="" arg_kmer_size} \
      ~{true="-m" false="" arg_max_number} \
      ~{true="-x" false="" arg_neighborhood_size} \
      ~{true="-d" false="" arg_neighborhood_distance} \
      ~{true="-q" false="" arg_prune_primer} \
      ~{true="-n" false="" use_hamming_neighborhood} \
      ~{true="-c" false="" arg_min_temperature} \
      ~{true="-l" false="" arg_max_pcr} \
      ~{if defined(cut_off_penalty) then ("--cutoffPenalty " +  '"' + cut_off_penalty + '"') else ""} \
      ~{if defined(penalty_tm_diff) then ("--penaltyTmDiff " +  '"' + penalty_tm_diff + '"') else ""} \
      ~{if defined(penalty_tm_mismatch) then ("--penaltyTmMismatch " +  '"' + penalty_tm_mismatch + '"') else ""} \
      ~{if defined(penalty_length) then ("--penaltyLength " +  '"' + penalty_length + '"') else ""} \
      ~{if defined(ent_temp) then ("--enttemp " +  '"' + ent_temp + '"') else ""} \
      ~{if defined(monovalent) then ("--monovalent " +  '"' + monovalent + '"') else ""} \
      ~{if defined(divalent) then ("--divalent " +  '"' + divalent + '"') else ""} \
      ~{if defined(dna) then ("--dna " +  '"' + dna + '"') else ""} \
      ~{if defined(dntp) then ("--dntp " +  '"' + dntp + '"') else ""}
  >>>
  parameter_meta {
    arg_genome_file: "[ --genome ] arg                   genome file"
    arg_primer_config: "[ --config ] arg (=\"./src/primer3_config/\") primer3 config directory"
    arg_output_file: "[ --outfile ] arg                  output file"
    arg_kmer_size: "[ --kmer ] arg (=15)               k-mer size"
    arg_max_number: "[ --maxmatches ] arg (=10000)      max. number of matches per k-mer"
    arg_neighborhood_size: "[ --maxNeighborhood ] arg (=10000) max. neighborhood size"
    arg_neighborhood_distance: "[ --distance ] arg (=1)            neighborhood distance"
    arg_prune_primer: "[ --pruneprimer ] arg              prune primer threshold"
    use_hamming_neighborhood: "[ --hamming ]                      use hamming neighborhood instead of  edit distance"
    arg_min_temperature: "[ --cutTemp ] arg (=45)            min. primer melting temperature"
    arg_max_pcr: "[ --maxProdSize ] arg (=15000)     max. PCR Product size"
    cut_off_penalty: "(=-1)             max. penalty for products (-1 = keep  all)"
    penalty_tm_diff: "(=0.59999999999999998) multiplication factor for deviation of  primer Tm penalty"
    penalty_tm_mismatch: "(=0.40000000000000002) multiplication factor for Tm pair  difference penalty"
    penalty_length: "(=0.001)          multiplication factor for amplicon  length penalty"
    ent_temp: "(=37)                   temperature for entropie and entalpie  calculation in Celsius"
    monovalent: "(=50)                concentration of monovalent ions in  mMol"
    divalent: "(=1.5)                 concentration of divalent ions in mMol"
    dna: "(=50)                       concentration of annealing(!) Oligos in nMol"
    dntp: "(=0.59999999999999998)     the sum  of all dNTPs in mMol"
    sequences_dot_fast_a: ""
  }
}