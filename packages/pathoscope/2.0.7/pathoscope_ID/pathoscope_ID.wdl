version 1.0

task PathoscopeID {
  input {
    Boolean? out_matrix
    Boolean? no_updated_align_file
    Boolean? no_display_cut_off
    String? em_epsilon
    String? maxiter
    Int? pi_prior
    Int? theta_prior
    File? exp_tag
    Directory? outdir
    Int? file_type
    File? align_file
    String insignificant
  }
  command <<<
    pathoscope ID \
      ~{insignificant} \
      ~{if (out_matrix) then "--outMatrix" else ""} \
      ~{if (no_updated_align_file) then "--noUpdatedAlignFile" else ""} \
      ~{if (no_display_cut_off) then "--noDisplayCutoff" else ""} \
      ~{if defined(em_epsilon) then ("-emEpsilon " +  '"' + em_epsilon + '"') else ""} \
      ~{if defined(maxiter) then ("-maxIter " +  '"' + maxiter + '"') else ""} \
      ~{if defined(pi_prior) then ("-piPrior " +  '"' + pi_prior + '"') else ""} \
      ~{if defined(theta_prior) then ("-thetaPrior " +  '"' + theta_prior + '"') else ""} \
      ~{if defined(exp_tag) then ("-expTag " +  '"' + exp_tag + '"') else ""} \
      ~{if defined(outdir) then ("-outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(file_type) then ("-fileType " +  '"' + file_type + '"') else ""} \
      ~{if defined(align_file) then ("-alignFile " +  '"' + align_file + '"') else ""}
  >>>
  parameter_meta {
    out_matrix: "Output alignment matrix"
    no_updated_align_file: "Do not generate an updated alignment file"
    no_display_cut_off: "Do not cutoff display of genomes, even if it is"
    em_epsilon: "EM Algorithm Epsilon cutoff"
    maxiter: "EM Algorithm maximum iterations"
    pi_prior: "EM Algorithm Pi Prior equivalent to adding n unique\\nreads (Default: n=0)"
    theta_prior: "EM Algorithm Theta Prior equivalent to adding n non-\\nunique reads (Default: n=0)"
    exp_tag: "Experiment tag added to output file for easy\\nidentification (Default: pathoid)"
    outdir: "Output Directory (Default=. (current directory))"
    file_type: "Alignment Format: sam/bl8/gnu-sam (Default: sam)"
    align_file: "Alignment file path\\n"
    insignificant: "-scoreCutoff ID_SCORE_CUTOFF"
  }
  output {
    File out_stdout = stdout()
    File out_exp_tag = "${in_exp_tag}"
    Directory out_outdir = "${in_outdir}"
  }
}