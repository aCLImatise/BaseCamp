version 1.0

task MiRNAture {
  input {
    Boolean? man
    File? blast_queries_folder
    File? datadir
    File? mir_fix_path
    Boolean? mode
    Int? parallel_slur_m
    Boolean? repetition_cut_off
    Boolean? strategy
    File? specie_genome
    String? specie_name
    String? specie_tag
    File? subset_models
    File? user_models
    File? workdir
  }
  command <<<
    miRNAture \
      ~{if (man) then "-man" else ""} \
      ~{if defined(blast_queries_folder) then ("-blastQueriesFolder " +  '"' + blast_queries_folder + '"') else ""} \
      ~{if defined(datadir) then ("-datadir " +  '"' + datadir + '"') else ""} \
      ~{if defined(mir_fix_path) then ("-mirfix_path " +  '"' + mir_fix_path + '"') else ""} \
      ~{if (mode) then "-mode" else ""} \
      ~{if defined(parallel_slur_m) then ("-parallel_slurm " +  '"' + parallel_slur_m + '"') else ""} \
      ~{if (repetition_cut_off) then "-repetition_cutoff" else ""} \
      ~{if (strategy) then "-strategy" else ""} \
      ~{if defined(specie_genome) then ("-specie_genome " +  '"' + specie_genome + '"') else ""} \
      ~{if defined(specie_name) then ("-specie_name " +  '"' + specie_name + '"') else ""} \
      ~{if defined(specie_tag) then ("-specie_tag " +  '"' + specie_tag + '"') else ""} \
      ~{if defined(subset_models) then ("-subset_models " +  '"' + subset_models + '"') else ""} \
      ~{if defined(user_models) then ("-user_models " +  '"' + user_models + '"') else ""} \
      ~{if defined(workdir) then ("-workdir " +  '"' + workdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirnature:1.0--pl5262r35hdfd78af_2"
  }
  parameter_meta {
    man: "Prints an extended help page and exits."
    blast_queries_folder: "Path of blast query sequences in FASTA format to be searched\\non the subject sequence."
    datadir: "Path to pre-calculated data directory containing RFAM and\\nmiRBase covariance, hidden markov models, and necessary\\nfiles to run MIRfix."
    mir_fix_path: "Alternative path of the MIRfix.py program."
    mode: "<Blast, HMM, Other_CM, Infernal, Final>\\nHomology search modes: Blast, HMM, Other_CM, Infernal and/or\\nFinal. It is possible to perform individual analysis, but it\\nis always recommended to include the Final option."
    parallel_slur_m: "Activate SLURM resource manager to submit parallel jobs (1)\\nor not (0)."
    repetition_cut_off: "<relax,Number_Loci,Candidates_to_evaluate>\\nSetup number of maximum loci number that will be evaluated\\nby the mature's annotation stage. By default, miRNAture will\\ndetect miRNA families that report high number of loci (> 200\\nloci). Then, it will select the top 100 candidates in terms\\nof alignment scores, as candidates for the validation stage\\n(default,200,100). The designed values could be modified by\\nthe following flag:\\n'relax,Number_Loci,Candidates_to_evaluate'. This option\\nallows to the user to select the threshold values to detect\\nrepetitive families. The first parameter is <relax>, which\\ntells miRNAture to change the default configuration. The\\nnext one, <Number_Loci> is the threshold of loci number to\\nclassify a family as repetitive. The last one,\\n<Candidates_to_evaluate>, is the number of candidates prone\\nto be evaluated in the next evaluation section. The rest\\ncandidates are included as homology 'potential' candidates."
    strategy: "<1,2,3,4,5,6,7,8,9,10>\\nThis flag is blast mode specific. It corresponds to blast\\nstrategies that would be used to search miRNAs. It must be\\nindicated along with -m Blast flag."
    specie_genome: "Path of target sequences to be analyzed in FASTA format."
    specie_name: "Specie or sequence source's scientific name. The format must\\nbe: Genera_specie, separated by '_'."
    specie_tag: "Experiment tag. Will help to identify the generated files\\nalong miRNA output files."
    subset_models: "Target list of CMs to be searched on subject\\ngenome/sequences. If not indicated, miRNAture will run all\\nRFAM v14.4 metazoan miRNA models."
    user_models: "Directory with additional hidden Markov (HMMs) or covariance\\nmodels (CMs) provided by the user. This must be contain a\\ncorresponding HMMs/ and CMs/ folders, which the user models\\nwill be identified."
    workdir: "Working directory path to write all miRNAture results.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_workdir = "${in_workdir}"
  }
}