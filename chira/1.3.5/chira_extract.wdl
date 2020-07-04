version 1.0

task ChiraExtract.py {
  input {
    Boolean? _loci_input
    Boolean? _output_default
    Boolean? _gtf_annotation
    Boolean? _processes_number
    Boolean? tc
    Boolean? sc
    Boolean? co
    Boolean? hybridize
    Boolean? no_seed
    Boolean? acc
    Boolean? _intarnamode_intarna
    Boolean? _temperature_parameter
    Boolean? sbp
    Boolean? smp_u
    Boolean? acc_w
    Boolean? fone
    Boolean? f_two
    Boolean? _ref_reference
    Boolean? summer_ize
  }
  command <<<
    chira_extract.py \
      ~{true="-l" false="" _loci_input} \
      ~{true="-o" false="" _output_default} \
      ~{true="-g" false="" _gtf_annotation} \
      ~{true="-p" false="" _processes_number} \
      ~{true="-tc" false="" tc} \
      ~{true="-sc" false="" sc} \
      ~{true="-co" false="" co} \
      ~{true="--hybridize" false="" hybridize} \
      ~{true="--no_seed" false="" no_seed} \
      ~{true="-acc" false="" acc} \
      ~{true="-m" false="" _intarnamode_intarna} \
      ~{true="-t" false="" _temperature_parameter} \
      ~{true="-sbp" false="" sbp} \
      ~{true="-smpu" false="" smp_u} \
      ~{true="-accw" false="" acc_w} \
      ~{true="-f1" false="" fone} \
      ~{true="-f2" false="" f_two} \
      ~{true="-f" false="" _ref_reference} \
      ~{true="--summerize" false="" summer_ize}
  >>>
  parameter_meta {
    _loci_input: ", --loci           Input BED file with alignments (default: None)"
    _output_default: ", --out            Path to output directory (default: None)"
    _gtf_annotation: ", --gtf            Annotation GTF file (default: None)"
    _processes_number: ", --processes      Number of processes to use (default: 1)"
    tc: ", --tpm_cutoff    Transcripts with less than this percentile TPMs will be discarded in the final output. [0-1.0] (default: 0)"
    sc: ", --score_cutoff  Hybrids with less than this score will be discarded in the final output. [0-1.0] (default: 0.0)"
    co: ", --chimeric_overlap  Maximum number of bases allowed between the chimeric segments of a read (default: 2)"
    hybridize: "Hybridize the predicted chimeras (default: False)"
    no_seed: "Do not enforce seed interactions (default: False)"
    acc: ", --accessibility  IntaRNA accessibility: C (compute) or N (not) (default: N)"
    _intarnamode_intarna: ", --intarna_mode   IntaRNA mode: H (heuristic), M (exact), S (seed-only) (default: H)"
    _temperature_parameter: ", --temperature    IntaRNA temperature parameter in Celsius to setup the VRNA energy parameters (default: 37)"
    sbp: ", --seed_bp      IntaRNA --seedBP parameter: number of inter-molecular base pairs within the seed region (default: 5)"
    smp_u: ", --seed_min_pu  IntaRNA --seedMinPu parameter: minimal unpaired probability (per sequence) a seed region may have (default: 0)"
    acc_w: ", --acc_width   IntaRNA --accW parameter: sliding window size for accessibility computation (default: 150)"
    fone: ", --ref_fasta1    First prioroty fasta file (default: None)"
    f_two: ", --ref_fasta2    second priority fasta file (default: None)"
    _ref_reference: ", --ref            Reference fasta file (default: None)"
    summer_ize: "Summerize interactions at loci level (default: False)"
  }
}