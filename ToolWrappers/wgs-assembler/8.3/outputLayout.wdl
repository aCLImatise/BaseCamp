version 1.0

task OutputLayout {
  input {
    Boolean? mandatory_path_gkpstore
    Int? ignore_corrected_fragments
    Boolean? input_prefix_of
    String? output_prefix_asm
    Int? maximum_uncorrected_pacbio
    Int? level_verbosity_higher
    Int? consider_pileup_times
  }
  command <<<
    outputLayout \
      ~{if (mandatory_path_gkpstore) then "-G" else ""} \
      ~{if defined(ignore_corrected_fragments) then ("-l " +  '"' + ignore_corrected_fragments + '"') else ""} \
      ~{if (input_prefix_of) then "-i" else ""} \
      ~{if defined(output_prefix_asm) then ("-o " +  '"' + output_prefix_asm + '"') else ""} \
      ~{if defined(maximum_uncorrected_pacbio) then ("-M " +  '"' + maximum_uncorrected_pacbio + '"') else ""} \
      ~{if defined(level_verbosity_higher) then ("-v " +  '"' + level_verbosity_higher + '"') else ""} \
      ~{if defined(consider_pileup_times) then ("-R " +  '"' + consider_pileup_times + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_gkpstore: "Mandatory path to a gkpStore."
    ignore_corrected_fragments: "ignore corrected fragments less than 500 bp"
    input_prefix_of: "input prefix of"
    output_prefix_asm: "output prefix of asm"
    maximum_uncorrected_pacbio: "The maximum uncorrected PacBio gap that will be allowed. When there is no short-read coverage for a region, by default the pipeline will split a PacBio sequence. This option allows a number of PacBio sequences without short-read coverage to remain. For example, specifying 50, will mean 50bp can have no short-read coverage without splitting the PacBio sequence. Warning: this will allow more sequences that went through the SMRTportal to not be fixed."
    level_verbosity_higher: "level of verbosity. Higher values generate more debugging output"
    consider_pileup_times: "consider a pileup of 0.000000 times the mean for a single corrected read to be a repeat and distribute reads to their best locations (this is only useful for metagenomic or non-even coverage datasets. Otherwise the global repeat estimate is used instead)"
  }
  output {
    File out_stdout = stdout()
  }
}