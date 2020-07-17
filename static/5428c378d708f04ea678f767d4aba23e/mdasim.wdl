version 1.0

task Mdasim {
  input {
    Boolean? log
    Boolean? mutation_rate
    Boolean? verbose
    Boolean? file_name_reference
    Boolean? output_files_prefix
    Boolean? output_fragments
    Boolean? primers
    Boolean? primer_no
    Boolean? frg_lng_th
    Boolean? coverage
    Boolean? step_size
    Boolean? alpha
    Boolean? attach_num
    Boolean? read_length
    Boolean? single
    String? optional
    String? args
  }
  command <<<
    mdasim \
      ~{optional} \
      ~{args} \
      ~{true="--log" false="" log} \
      ~{true="--mutationrate" false="" mutation_rate} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--input" false="" file_name_reference} \
      ~{true="--output" false="" output_files_prefix} \
      ~{true="--outputfragments" false="" output_fragments} \
      ~{true="--primers" false="" primers} \
      ~{true="--primerNo" false="" primer_no} \
      ~{true="--frgLngth" false="" frg_lng_th} \
      ~{true="--coverage" false="" coverage} \
      ~{true="--stepSize" false="" step_size} \
      ~{true="--alpha" false="" alpha} \
      ~{true="--attachNum" false="" attach_num} \
      ~{true="--readLength" false="" read_length} \
      ~{true="--single" false="" single}
  >>>
  parameter_meta {
    log: "= file name for a log file of all single nucleotide errors that happen during amplification"
    mutation_rate: "= chance of a nucleotide substitution"
    verbose: "extended verbose for debug mode"
    file_name_reference: "= file name of reference DNA sequence (default: reference.fasta)"
    output_files_prefix: "= output files prefix , `Amplicons.fasta` will be appended to the prefix (default: out)"
    output_fragments: "writes the lists of fragments and primer positions at the end of simulation in two txt files suffixed by Fragments.txt and PrimerPositions.txt"
    primers: "= file name of input primers in fasta format (default: primerList.fasta)"
    primer_no: "= average number of initial available primers (default: input reference length * coverage / frgLngth * 1000)"
    frg_lng_th: "= average number of synthesized bases per phi29 (default: 70,000 nt; synthesized bases per phi29 has uniform distribution; variance = frgLngth^2 / 1200)"
    coverage: "= expected average coverage (default: 1000)"
    step_size: "= number of synthesized bases per phi29 in each step (default: 10000)"
    alpha: "= normalized number of primers attached in each step (default: 0.5e-11)"
    attach_num: "= number of primers attached per single strand of reference sequence in the first step. It can be any positive number. (overrides -A; alpha = attachNum / (input reference length * primerNo))"
    read_length: "= minimum length of output amplicons (default: 10)"
    single: "Input reference is amplified as a single strand sequence"
    optional: ""
    args: ""
  }
}