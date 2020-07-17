version 1.0

task EvaluateAssemblyUsingMapping.py {
  input {
    String? which_bowtie_two
    String? bowtie_two_mode
    String? bowtie_two_options
    String? stat_mode
    Boolean? debug
    String? f
    String? one
    String? two
    String? o
  }
  command <<<
    evaluate_assembly_using_mapping.py \
      ~{if defined(which_bowtie_two) then ("--which-bowtie2 " +  '"' + which_bowtie_two + '"') else ""} \
      ~{if defined(bowtie_two_mode) then ("--bowtie2-mode " +  '"' + bowtie_two_mode + '"') else ""} \
      ~{if defined(bowtie_two_options) then ("--bowtie2-options " +  '"' + bowtie_two_options + '"') else ""} \
      ~{if defined(stat_mode) then ("--stat-mode " +  '"' + stat_mode + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    which_bowtie_two: "Assign the path to Bowtie2 binary files if not added to the path. Default: try GetOrganelleDep/linux/bowtie2 first, then $PATH"
    bowtie_two_mode: "Default: --sensitive"
    bowtie_two_options: "Default: --no-discordant --dovetail"
    stat_mode: "Statistical mode for counting multiple hits of a single read: best/all. The all mode is meaningful only when '-k <INT>' was included in '--bowtie2-options'. Default: best"
    debug: "Turn on debug mode."
    f: ""
    one: ""
    two: ""
    o: ""
  }
}