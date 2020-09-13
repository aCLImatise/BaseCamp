version 1.0

task Sim4db {
  input {
    Boolean? print_status_running
    Boolean? print_script_lines_stderr
    Boolean? yn
    Boolean? cdna
    Boolean? genomic
    Boolean? script
    Boolean? pairwise
    File? write_output_file
    Boolean? touch
    Boolean? threads
    Boolean? min_coverage
    Boolean? min_identity
    Boolean? minlength
    Int? always_report
    Boolean? no_def_lines
    Boolean? alignments
    Boolean? poly_tails
    Boolean? cut
    String? noncanonical
    Boolean? splice_model
    Boolean? force_strand
    Int? interspecies
    Boolean? set_spaced_pattern
    Boolean? set_relink_factor
    Boolean? set_first_threshold
    Boolean? set_second_threshold
    Boolean? ma
    Boolean? mp
  }
  command <<<
    sim4db \
      ~{if (print_status_running) then "-v" else ""} \
      ~{if (print_script_lines_stderr) then "-V" else ""} \
      ~{if (yn) then "-YN" else ""} \
      ~{if (cdna) then "-cdna" else ""} \
      ~{if (genomic) then "-genomic" else ""} \
      ~{if (script) then "-script" else ""} \
      ~{if (pairwise) then "-pairwise" else ""} \
      ~{if (write_output_file) then "-output" else ""} \
      ~{if (touch) then "-touch" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (min_coverage) then "-mincoverage" else ""} \
      ~{if (min_identity) then "-minidentity" else ""} \
      ~{if (minlength) then "-minlength" else ""} \
      ~{if defined(always_report) then ("-alwaysreport " +  '"' + always_report + '"') else ""} \
      ~{if (no_def_lines) then "-nodeflines" else ""} \
      ~{if (alignments) then "-alignments" else ""} \
      ~{if (poly_tails) then "-polytails" else ""} \
      ~{if (cut) then "-cut" else ""} \
      ~{if defined(noncanonical) then ("-noncanonical " +  '"' + noncanonical + '"') else ""} \
      ~{if (splice_model) then "-splicemodel" else ""} \
      ~{if (force_strand) then "-forcestrand" else ""} \
      ~{if defined(interspecies) then ("-interspecies " +  '"' + interspecies + '"') else ""} \
      ~{if (set_spaced_pattern) then "-Z" else ""} \
      ~{if (set_relink_factor) then "-H" else ""} \
      ~{if (set_first_threshold) then "-K" else ""} \
      ~{if (set_second_threshold) then "-C" else ""} \
      ~{if (ma) then "-Ma" else ""} \
      ~{if (mp) then "-Mp" else ""}
  >>>
  parameter_meta {
    print_status_running: "print status to stderr while running"
    print_script_lines_stderr: "print script lines (stderr) as they are processed"
    yn: "print script lines (to given file) as they are processed, annotated with yes/no"
    cdna: "use these cDNA sequences"
    genomic: "use these genomic sequences"
    script: "use this script file"
    pairwise: "do pairs of sequences"
    write_output_file: "write output to this file"
    touch: "create this file when the program finishes execution"
    threads: "Use n threads."
    min_coverage: "iteratively find all exon models with the specified\\nminimum PERCENT COVERAGE"
    min_identity: "iteratively find all exon models with the specified\\nminimum PERCENT EXON IDENTITY"
    minlength: "iteratively find all exon models with the specified\\nminimum ABSOLUTE COVERAGE (number of bp matched)"
    always_report: "report <number> exon models, even if they\\nare below the quality thresholds\\nIf no mincoverage or minidentity or minlength is given, only\\nthe best exon model is returned.\\nYou will probably want to specify ALL THREE of mincoverage,\\nminidentity and minlength!  Don't assume the default values\\nare what you want!\\nYou will DEFINITELY want to specify at least one of mincoverage,\\nminidentity and minlength with alwaysreport!  If you don't, mincoverage\\nwill be set to 90 and minidentity to 95 -- to reduce the number of\\nspurious matches when a good match is found."
    no_def_lines: "don't include the defline in the output"
    alignments: "print alignments"
    poly_tails: "DON'T mask poly-A and poly-T tails."
    cut: "Trim marginal exons if A/T % > x (poly-AT tails)"
    noncanonical: "'t force canonical splice sites"
    splice_model: "Use the following splice model: 0 - original sim4;\\n1 - GeneSplicer; 2 - Glimmer (default: 0)"
    force_strand: "Force the strand prediction to always be\\n'forward' or 'reverse'"
    interspecies: "sim4cc for inter-species alignments"
    set_spaced_pattern: "set the (spaced) seed pattern"
    set_relink_factor: "set the relink weight factor"
    set_first_threshold: "set the first MSP threshold"
    set_second_threshold: "set the second MSP threshold"
    ma: "set the limit of the number of MSPs allowed"
    mp: "same, as percentage of bases in cDNA\\nNOTE:  If used, both -Ma and -Mp must be specified!\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}