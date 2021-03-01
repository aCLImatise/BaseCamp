version 1.0

task TagDir2hicFileplLs {
  input {
    File? juicer
    File? genome
    Boolean? juicer_exe
    Boolean? juicer_opt
    Boolean? number_cpus_use
    File? short
    Int tagdirtwohicfiledotpl
    Directory tag_directory
  }
  command <<<
    tagDir2hicFile_pl ls \
      ~{tagdirtwohicfiledotpl} \
      ~{tag_directory} \
      ~{if defined(juicer) then ("-juicer " +  '"' + juicer + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if (juicer_exe) then "-juicerExe" else ""} \
      ~{if (juicer_opt) then "-juicerOpt" else ""} \
      ~{if (number_cpus_use) then "-p" else ""} \
      ~{if defined(short) then ("-short " +  '"' + short + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    juicer: "(create *.hic file with juicer, \\\"-juicer auto\\\" places file in tagdir)"
    genome: "(genome is passed on to juicer_tools - if using a normal genome, i.e. hg38,\\nmm10, etc. it's probably best to specify the genome code - if juicer_tools can recognize it.\\nOtherwise specify the path to a chrom.sizes file instead of the genome code)"
    juicer_exe: "<\\\"command to run juicer_tools\\\"> (executable for running juicer_tools,\\nby default assumes \\\"juicer_tools\\\" is in the executable PATH)"
    juicer_opt: "<\\\"juicer options\\\"> (command line options to pass to juicer, use quotes \\\"...\\\")"
    number_cpus_use: "<#> (number of CPUs to use during sort command for juicer file creation, default: 1)"
    short: "(output read pairs in \\\"short format\\\" for processing with juicer,\\nbut don't run juicer_tools. This file will not be sorted the way juicer wants it)\\n"
    tagdirtwohicfiledotpl: ""
    tag_directory: ""
  }
  output {
    File out_stdout = stdout()
    File out_short = "${in_short}"
  }
}