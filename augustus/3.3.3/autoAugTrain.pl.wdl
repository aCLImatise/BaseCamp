version 1.0

task AutoAugTrainpl {
  input {
    File? genome
    String? species
    String? est_ali
    Boolean? utr
    Int? flanking_dna
    Boolean? working_dir
    Boolean? verbose
    Boolean? use_existing
    Int? opt_rounds
    Boolean? crf
    String? aug
    String? training_set
  }
  command <<<
    autoAugTrain_pl \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(est_ali) then ("--estali " +  '"' + est_ali + '"') else ""} \
      ~{if (utr) then "--utr" else ""} \
      ~{if defined(flanking_dna) then ("--flanking_DNA " +  '"' + flanking_dna + '"') else ""} \
      ~{if (working_dir) then "--workingdir" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (use_existing) then "--useexisting" else ""} \
      ~{if defined(opt_rounds) then ("--optrounds " +  '"' + opt_rounds + '"') else ""} \
      ~{if (crf) then "--CRF" else ""} \
      ~{if defined(aug) then ("--aug " +  '"' + aug + '"') else ""} \
      ~{if defined(training_set) then ("--trainingset " +  '"' + training_set + '"') else ""}
  >>>
  parameter_meta {
    genome: "FASTA file with DNA sequences for training\\ngenome.fa should include the corresponding sequences in this case"
    species: "species name as used by AUGUSTUS"
    est_ali: "EST alignments are used to guess the UTR and its end point."
    utr: "Switch it on to train AUGUSTUS with untranslated regions. Off by default"
    flanking_dna: "flanking_DNA length, default:4000"
    working_dir: "=/path/to/wd/      In the working directory results and temporary files are stored.\\nDefault: current working directory\\nBy case with \\\"utr\\\", the directory \\\"autoTrainRandomNumber\\\" which made by autoAugTrain.pl\\nwithout \\\"utr\\\" is expected."
    verbose: "increase the verbosity level of the program by 1 each, default: 1, max level: 3, e.g. say -v -v -v"
    use_existing: "use and change the present config and parameter files if they exist for 'species'"
    opt_rounds: "optimization rounds - each meta parameter is optimized this often (default 1)"
    crf: "try training as Conditional Random Field. Off by default"
    aug: "Previous CDS predictions for constructing a training set of UTRs."
    training_set: ""
  }
  output {
    File out_stdout = stdout()
  }
}