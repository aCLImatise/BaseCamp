version 1.0

task Gargammel {
  input {
    Boolean? comp
    Boolean? mock
    Boolean? output_prefix_simadna
    Boolean? _fragments_default
    Boolean? _endogenous_coverage
    Boolean? mi_since
    Boolean? mis_in_cc
    Boolean? mis_in_cb
    Boolean? dist_mis
    Boolean? loc
    Boolean? scale
    Boolean? minsize
    Boolean? maxsize
    Boolean? map_damage
    Boolean? mat_file
    Boolean? damage
    Boolean? map_damage_e
    Boolean? mat_file_e
    Boolean? damage_e
    Boolean? map_damage_b
    Boolean? mat_file_b
    Boolean? damage_b
    Boolean? map_damage_c
    Boolean? mat_file_c
    Boolean? damage_cd
    Boolean? mat_file_non_meth
    Boolean? mat_file_meth
    Boolean? fa
    Boolean? sa
    Boolean? rl
    Boolean? se
    Boolean? qs
    Boolean? qs_two
    Boolean? ss
  }
  command <<<
    gargammel \
      ~{true="--comp" false="" comp} \
      ~{true="--mock" false="" mock} \
      ~{true="-o" false="" output_prefix_simadna} \
      ~{true="-n" false="" _fragments_default} \
      ~{true="-c" false="" _endogenous_coverage} \
      ~{true="--misince" false="" mi_since} \
      ~{true="--misincc" false="" mis_in_cc} \
      ~{true="--misincb" false="" mis_in_cb} \
      ~{true="--distmis" false="" dist_mis} \
      ~{true="--loc" false="" loc} \
      ~{true="--scale" false="" scale} \
      ~{true="--minsize" false="" minsize} \
      ~{true="--maxsize" false="" maxsize} \
      ~{true="-mapdamage" false="" map_damage} \
      ~{true="-matfile" false="" mat_file} \
      ~{true="-damage" false="" damage} \
      ~{true="-mapdamagee" false="" map_damage_e} \
      ~{true="-matfilee" false="" mat_file_e} \
      ~{true="-damagee" false="" damage_e} \
      ~{true="-mapdamageb" false="" map_damage_b} \
      ~{true="-matfileb" false="" mat_file_b} \
      ~{true="-damageb" false="" damage_b} \
      ~{true="-mapdamagec" false="" map_damage_c} \
      ~{true="-matfilec" false="" mat_file_c} \
      ~{true="-damagecd" false="" damage_cd} \
      ~{true="-matfilenonmeth" false="" mat_file_non_meth} \
      ~{true="-matfilemeth" false="" mat_file_meth} \
      ~{true="-fa" false="" fa} \
      ~{true="-sa" false="" sa} \
      ~{true="-rl" false="" rl} \
      ~{true="-se" false="" se} \
      ~{true="-qs" false="" qs} \
      ~{true="-qs2" false="" qs_two} \
      ~{true="-ss" false="" ss}
  >>>
  parameter_meta {
    comp: "[B,C,E]                          Composition of the final set in fraction  the 3 numbers represent the bacterial, contaminant and endogenous ex: --comp 0.6,0.02,0.38 will result in 60% bacterial contamination while the rest will be from the same species 5% will be contamination and 95% will be endogenous Default: --comp 0,0,1"
    mock: "Do nothing, just print the commands that will be run"
    output_prefix_simadna: "Output prefix (default: [input dir]/simadna)"
    _fragments_default: "[number]                Generate [number] fragments (default: 1000)"
    _endogenous_coverage: "[coverage]              Endogenous coverage"
    mi_since: "[file]          Base misincorporation for the endogenous fragments (default none)"
    mis_in_cc: "[file]          Base misincorporation for the contaminant fragments (default none)"
    mis_in_cb: "[file]          Base misincorporation for the bacterial fragments (default none)"
    dist_mis: "[dist]          Distance to consider for base misincorporation (default 1) this file is obtained from mapDamage"
    loc: "[file]          Location for lognormal distribution (default none)"
    scale: "[file]          Scale for lognormal distribution    (default none)"
    minsize: "[length]        Minimum fragments length (default: 0)"
    maxsize: "[length]        Maximum fragments length (default: 1000)"
    map_damage: "[mis.txt] [protocol]    Read the miscorporation file [mis.txt] produced by mapDamage [protocol] can be either \"single\" or \"double\" (without quotes) Single strand will have C->T damage on both ends Double strand will have and C->T at the 5' end and G->A damage at the 3' end"
    mat_file: "[matrix file prefix]    Read the matrix file of substitutions Provide the prefix only, both files must end with 5.dat and 3.dat"
    damage: "[v,l,d,s]               For the Briggs et al. 2007 model The parameters must be comma-separated e.g.: -damage 0.03,0.4,0.01,0.3 v: nick frequency l: length of overhanging ends (geometric parameter) d: prob. of deamination of Cs in double-stranded parts s: prob. of deamination of Cs in single-stranded parts"
    map_damage_e: "[mis.txt] [protocol]    Endogenous mapDamage misincorporation file"
    mat_file_e: "[matrix file prefix]    Endogenous matrix file of substitutions"
    damage_e: "[v,l,d,s]               Endogenous Briggs parameters"
    map_damage_b: "[mis.txt] [protocol]    Bacterial mapDamage misincorporation file"
    mat_file_b: "[matrix file prefix]    Bacterial matrix file of substitutions"
    damage_b: "[v,l,d,s]               Bacterial Briggs parameters"
    map_damage_c: "[mis.txt] [protocol]    Human contaminant mapDamage misincorporation file"
    mat_file_c: "[matrix file prefix]    Human contaminant matrix file of substitutions"
    damage_cd: "[v,l,d,s]               Human contaminant Briggs parameters"
    mat_file_non_meth: "[matrix file prefix]    Read the matrix file of substitutions for non-methylated Cs Provide the prefix only, both files must end with 5.dat and 3.dat"
    mat_file_meth: "[matrix file prefix]    Read the matrix file of substitutions for methylated Cs Provide the prefix only, both files must end with 5.dat and 3.data"
    fa: "[seq]                           Adapter that is observed after the forward read (Default: AGATCGGAAG...)"
    sa: "[seq]                           Adapter that is observed after the reverse read (Default: AGATCGGAAG...)"
    rl: "[length]                        Desired read length  (Default: 75)"
    se: "use single-end sequencing (Default: paired-end) The following options change the sequencing error rate, please note that positive factor will decrease the rate of such errors and a negative one will increase it."
    qs: "[factor]                        Increase error rate for forward reads by a factor of 1/(10^([factor]/10)) (Default: 0)"
    qs_two: "[factor]                        Increase error rate for reverse reads by a factor of 1/(10^([factor]/10)) (Default: 0)"
    ss: "[system]                        Illumina platfrom to use, the parentheses indicate the max. read length use the shorthand in the left column: (single-end, paired-end) GA2  - GenomeAnalyzer II (  50bp,  75bp) HS20 - HiSeq 2000        ( 100bp, 100bp) HS25 - HiSeq 2500        ( 125bp, 150bp) (Default) HSXt - HiSeqX TruSeq     ( 150bp, 150bp) MSv1 - MiSeq v1          ( 250bp, 250bp) MSv3 - MiSeq v3          ( 250bp, 250bp)"
  }
}