version 1.0

task ChiraExtractpy {
  input {
    Boolean? _loci_file
    File? _path_output
    Boolean? _gtf_gtf
    Boolean? _processes_number
    Boolean? tc
    Boolean? sc
    Boolean? co
    Boolean? hybridize
    Boolean? no_seed
    Boolean? acc
    Boolean? _intarnamode_mode
    Boolean? _temperature_intarna
    Boolean? sbp
    Boolean? smp_u
    Boolean? acc_w
    Boolean? fone
    Boolean? f_two
    Boolean? _ref_reference
    Boolean? summer_ize
  }
  command <<<
    chira_extract_py \
      ~{if (_loci_file) then "-l" else ""} \
      ~{if (_path_output) then "-o" else ""} \
      ~{if (_gtf_gtf) then "-g" else ""} \
      ~{if (_processes_number) then "-p" else ""} \
      ~{if (tc) then "-tc" else ""} \
      ~{if (sc) then "-sc" else ""} \
      ~{if (co) then "-co" else ""} \
      ~{if (hybridize) then "--hybridize" else ""} \
      ~{if (no_seed) then "--no_seed" else ""} \
      ~{if (acc) then "-acc" else ""} \
      ~{if (_intarnamode_mode) then "-m" else ""} \
      ~{if (_temperature_intarna) then "-t" else ""} \
      ~{if (sbp) then "-sbp" else ""} \
      ~{if (smp_u) then "-smpu" else ""} \
      ~{if (acc_w) then "-accw" else ""} \
      ~{if (fone) then "-f1" else ""} \
      ~{if (f_two) then "-f2" else ""} \
      ~{if (_ref_reference) then "-f" else ""} \
      ~{if (summer_ize) then "--summerize" else ""}
  >>>
  parameter_meta {
    _loci_file: ", --loci           Input BED file with alignments (default: None)"
    _path_output: ", --out            Path to output directory (default: None)"
    _gtf_gtf: ", --gtf            Annotation GTF file (default: None)"
    _processes_number: ", --processes      Number of processes to use (default: 1)"
    tc: ", --tpm_cutoff    Transcripts with less than this percentile TPMs will\\nbe discarded in the final output. [0-1.0] (default: 0)"
    sc: ", --score_cutoff\\nHybrids with less than this score will be discarded in\\nthe final output. [0-1.0] (default: 0.0)"
    co: ", --chimeric_overlap\\nMaximum number of bases allowed between the chimeric\\nsegments of a read (default: 2)"
    hybridize: "Hybridize the predicted chimeras (default: False)"
    no_seed: "Do not enforce seed interactions (default: False)"
    acc: ", --accessibility\\nIntaRNA accessibility: C (compute) or N (not)\\n(default: N)"
    _intarnamode_mode: ", --intarna_mode   IntaRNA mode: H (heuristic), M (exact), S (seed-only)\\n(default: H)"
    _temperature_intarna: ", --temperature    IntaRNA temperature parameter in Celsius to setup the\\nVRNA energy parameters (default: 37)"
    sbp: ", --seed_bp      IntaRNA --seedBP parameter: number of inter-molecular\\nbase pairs within the seed region (default: 5)"
    smp_u: ", --seed_min_pu\\nIntaRNA --seedMinPu parameter: minimal unpaired\\nprobability (per sequence) a seed region may have\\n(default: 0)"
    acc_w: ", --acc_width   IntaRNA --accW parameter: sliding window size for\\naccessibility computation (default: 150)"
    fone: ", --ref_fasta1    First prioroty fasta file (default: None)"
    f_two: ", --ref_fasta2    second priority fasta file (default: None)"
    _ref_reference: ", --ref            Reference fasta file (default: None)"
    summer_ize: "Summerize interactions at loci level (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out__path_output = "${in__path_output}"
  }
}