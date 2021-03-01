version 1.0

task CorrectPacBio {
  input {
    Boolean? mandatory_path_gkpstore
    Int? no_more_fraction
    Int? no_more_errors
    Int? ignore_overlaps_rate
    Int? use_threads_process
    Int? output_results_files
    String? output_prefix_asm
    Int? specify_coverage_integer
    Int? maximum_uncorrected_pacbio
    Int? percentage_use_recruit
    Int? percentage_mates_used
    Int? level_verbosity_higher
    Int? consider_pileup_times
    String? var_13
  }
  command <<<
    correctPacBio \
      ~{if (mandatory_path_gkpstore) then "-G" else ""} \
      ~{if defined(no_more_fraction) then ("-e " +  '"' + no_more_fraction + '"') else ""} \
      ~{if defined(no_more_errors) then ("-E " +  '"' + no_more_errors + '"') else ""} \
      ~{if defined(ignore_overlaps_rate) then ("-c " +  '"' + ignore_overlaps_rate + '"') else ""} \
      ~{if defined(use_threads_process) then ("-t " +  '"' + use_threads_process + '"') else ""} \
      ~{if defined(output_results_files) then ("-p " +  '"' + output_results_files + '"') else ""} \
      ~{if defined(output_prefix_asm) then ("-o " +  '"' + output_prefix_asm + '"') else ""} \
      ~{if defined(specify_coverage_integer) then ("-C " +  '"' + specify_coverage_integer + '"') else ""} \
      ~{if defined(maximum_uncorrected_pacbio) then ("-M " +  '"' + maximum_uncorrected_pacbio + '"') else ""} \
      ~{if defined(percentage_use_recruit) then ("-m " +  '"' + percentage_use_recruit + '"') else ""} \
      ~{if defined(percentage_mates_used) then ("-S " +  '"' + percentage_mates_used + '"') else ""} \
      ~{if defined(level_verbosity_higher) then ("-v " +  '"' + level_verbosity_higher + '"') else ""} \
      ~{if defined(consider_pileup_times) then ("-R " +  '"' + consider_pileup_times + '"') else ""} \
      ~{if defined(var_13) then ("-O " +  '"' + var_13 + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_gkpstore: "Mandatory path to a gkpStore."
    no_more_fraction: "no more than 0.015 fraction (1.5%) error"
    no_more_errors: "no more than 0 errors"
    ignore_overlaps_rate: "ignore overlaps over this rate before correction"
    use_threads_process: "use 2 threads to process correction in parallel"
    output_results_files: "output 100 results files, corresponds to #of parallel consensus jobs desired"
    output_prefix_asm: "output prefix of asm"
    specify_coverage_integer: "Specify the pacBio coverage (integer) instead of automatically estimating."
    maximum_uncorrected_pacbio: "The maximum uncorrected PacBio gap that will be allowed. When there is no short-read coverage for a region, by default the pipeline will split a PacBio sequence. This option allows a number of PacBio sequences without short-read coverage to remain. For example, specifying 50, will mean 50bp can have no short-read coverage without splitting the PacBio sequence. Warning: this will allow more sequences that went through the SMRTportal to not be fixed."
    percentage_use_recruit: "The percentage of short reads to use to recruit other PacBio sequences to fill coverage gaps. Must be a decimal value between 0 and 1. Higher values lead to a longer runtime but more gaps being recovered. The default is 0.010000"
    percentage_mates_used: "The percentage of mates used to estimate the library insert size. Must be a decimal value between 0 and 1. For example, specifying 0.10 will use 10 percent of the mates to estimate the insert size. The default is 0.050000"
    level_verbosity_higher: "level of verbosity. Higher values generate more debugging output"
    consider_pileup_times: "consider a pileup of 2.000000 times the mean for a single corrected read to be a repeat and distribute reads to their best locations (this is only useful for metagenomic or non-even coverage datasets. Otherwise the global repeat estimate is used instead)"
    var_13: ""
  }
  output {
    File out_stdout = stdout()
  }
}