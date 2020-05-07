version 1.0

task TelescopeResume {
  input {
    Boolean quietQuiet
    Boolean debugDebug
    String logLogFile
    String outdirOutdir
    String expExpTag
    String reassignReassignMode
    String confConfProb
    String piPiPrior
    String thetaThetaPrior
    String emEmEpsilon
    Int maxMaxIter
    Boolean useUseLikelihood
    String? checkpointCheckpoint
  }
  command <<<
    telescope resume \
      ~{checkpointCheckpoint} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(expExpTag) then ("--exp_tag " +  '"' + expExpTag + '"') else ""} \
      ~{if defined(reassignReassignMode) then ("--reassign_mode " +  '"' + reassignReassignMode + '"') else ""} \
      ~{if defined(confConfProb) then ("--conf_prob " +  '"' + confConfProb + '"') else ""} \
      ~{if defined(piPiPrior) then ("--pi_prior " +  '"' + piPiPrior + '"') else ""} \
      ~{if defined(thetaThetaPrior) then ("--theta_prior " +  '"' + thetaThetaPrior + '"') else ""} \
      ~{if defined(emEmEpsilon) then ("--em_epsilon " +  '"' + emEmEpsilon + '"') else ""} \
      ~{if defined(maxMaxIter) then ("--max_iter " +  '"' + maxMaxIter + '"') else ""} \
      ~{true="--use_likelihood" false="" useUseLikelihood}
  >>>
}