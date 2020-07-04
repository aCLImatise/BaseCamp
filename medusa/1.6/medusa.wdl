version 1.0

task Medusa {
  input {
    Boolean? optional_parameterthe_option_d
    Boolean? draftsfolder_optional_parameter
    Boolean? gex_f
    Boolean? targetgenome_required_parameterthe
    Boolean? n_five_zero
    Boolean? outputname_optional_parameter
    Boolean? random
    Boolean? script_path
    Boolean? recommended_parameter_option
    Boolean? w_two
    String? jar
    String java
  }
  command <<<
    medusa \
      ~{java} \
      ~{true="-d" false="" optional_parameterthe_option_d} \
      ~{true="-f" false="" draftsfolder_optional_parameter} \
      ~{true="-gexf" false="" gex_f} \
      ~{true="-i" false="" targetgenome_required_parameterthe} \
      ~{true="-n50" false="" n_five_zero} \
      ~{true="-o" false="" outputname_optional_parameter} \
      ~{true="-random" false="" random} \
      ~{true="-scriptPath" false="" script_path} \
      ~{true="-v" false="" recommended_parameter_option} \
      ~{true="-w2" false="" w_two} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    optional_parameterthe_option_d: "OPTIONAL PARAMETER;The option *-d* allows for the estimation of the distance between pairs of contigs based on the reference genome(s): in this case the scaffolded contigs will be separated by a number of N characters equal to this estimate. The estimated distances are also saved in the <targetGenome>_distanceTable file. By default the scaffolded contigs are separated by 100 Ns"
    draftsfolder_optional_parameter: "<<draftsFolder>>                   OPTIONAL PARAMETER; The option *-f* is optional and indicates the path to the comparison drafts folder"
    gex_f: "OPTIONAL PARAMETER;Conting network and path cover are given in gexf format."
    targetgenome_required_parameterthe: "<<targetGenome>>                   REQUIRED PARAMETER;The option *-i* indicates the name of the target genome file."
    n_five_zero: "<<fastaFile>>                    OPTIONAL PARAMETER; The option *-n50* allows the calculation of the N50 statistic on a FASTA file. In this case the usage is the following: java -jar medusa.jar -n50 <name_of_the_fasta>. All the other options will be ignored."
    outputname_optional_parameter: "<<outputName>>                     OPTIONAL PARAMETER; The option *-o* indicates the name of output fasta file."
    random: "<<numberOfRounds>>            OPTIONAL PARAMETER;The option *-random* is available (not required). This option allows the user to run a given number of cleaning rounds and keep the best solution. Since the variability is small 5 rounds are usually sufficient to find the best score."
    script_path: "<<medusaScriptsFolder>>   OPTIONAL PARAMETER; The folder containing the medusa scripts. Default value: medusa_scripts"
    recommended_parameter_option: "RECOMMENDED PARAMETER; The option *-v* (recommended) print on console the information given by the package MUMmer. This option is strongly suggested to understand if MUMmer is not running properly."
    w_two: "OPTIONAL PARAMETER;The option *-w2* is optional and allows for a sequence similarity based weighting scheme. Using a different weighting scheme may lead to better results."
    jar: ""
    java: ""
  }
}