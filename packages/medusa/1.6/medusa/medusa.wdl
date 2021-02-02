version 1.0

task Medusa {
  input {
    Boolean? optional_parameterthe_option_dallows
    Boolean? draftsfolder_optional_parameter
    Boolean? gex_f
    Boolean? targetgenome_required_parameterthe
    Boolean? n_five_zero
    File? outputname_optional_parameter
    Boolean? random
    Boolean? script_path
    Boolean? recommended_parameter_optionv
    Boolean? w_two
    String? jar
    String java
  }
  command <<<
    medusa \
      ~{java} \
      ~{if (optional_parameterthe_option_dallows) then "-d" else ""} \
      ~{if (draftsfolder_optional_parameter) then "-f" else ""} \
      ~{if (gex_f) then "-gexf" else ""} \
      ~{if (targetgenome_required_parameterthe) then "-i" else ""} \
      ~{if (n_five_zero) then "-n50" else ""} \
      ~{if (outputname_optional_parameter) then "-o" else ""} \
      ~{if (random) then "-random" else ""} \
      ~{if (script_path) then "-scriptPath" else ""} \
      ~{if (recommended_parameter_optionv) then "-v" else ""} \
      ~{if (w_two) then "-w2" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    optional_parameterthe_option_dallows: "OPTIONAL PARAMETER;The option *-d*\\nallows for the estimation of the\\ndistance between pairs of contigs\\nbased on the reference genome(s):\\nin this case the scaffolded contigs\\nwill be separated by a number of N\\ncharacters equal to this estimate.\\nThe estimated distances are also\\nsaved in the\\n<targetGenome>_distanceTable file.\\nBy default the scaffolded contigs\\nare separated by 100 Ns"
    draftsfolder_optional_parameter: "<<draftsFolder>>                   OPTIONAL PARAMETER; The option *-f*\\nis optional and indicates the path\\nto the comparison drafts folder"
    gex_f: "OPTIONAL PARAMETER;Conting network\\nand path cover are given in gexf\\nformat."
    targetgenome_required_parameterthe: "<<targetGenome>>                   REQUIRED PARAMETER;The option *-i*\\nindicates the name of the target\\ngenome file."
    n_five_zero: "<<fastaFile>>                    OPTIONAL PARAMETER; The option\\n*-n50* allows the calculation of\\nthe N50 statistic on a FASTA file.\\nIn this case the usage is the\\nfollowing: java -jar medusa.jar\\n-n50 <name_of_the_fasta>. All the\\nother options will be ignored."
    outputname_optional_parameter: "<<outputName>>                     OPTIONAL PARAMETER; The option *-o*\\nindicates the name of output fasta\\nfile."
    random: "<<numberOfRounds>>            OPTIONAL PARAMETER;The option\\n*-random* is available (not\\nrequired). This option allows the\\nuser to run a given number of\\ncleaning rounds and keep the best\\nsolution. Since the variability is\\nsmall 5 rounds are usually\\nsufficient to find the best score."
    script_path: "<<medusaScriptsFolder>>   OPTIONAL PARAMETER; The folder\\ncontaining the medusa scripts.\\nDefault value: medusa_scripts"
    recommended_parameter_optionv: "RECOMMENDED PARAMETER; The option\\n*-v* (recommended) print on console\\nthe information given by the\\npackage MUMmer. This option is\\nstrongly suggested to understand if\\nMUMmer is not running properly."
    w_two: "OPTIONAL PARAMETER;The option *-w2*\\nis optional and allows for a\\nsequence similarity based weighting\\nscheme. Using a different weighting\\nscheme may lead to better results.\\n"
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
    File out_outputname_optional_parameter = "${in_outputname_optional_parameter}"
  }
}