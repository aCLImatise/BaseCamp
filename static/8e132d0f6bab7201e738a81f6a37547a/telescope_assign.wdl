version 1.0

task TelescopeAssign {
  input {
    String attributeAttribute
    String noNoFeatureKey
    String nNCpu
    String tempdirTempdir
    Boolean quietQuiet
    Boolean debugDebug
    String logLogFile
    String outdirOutdir
    String expExpTag
    Boolean updatedUpdatedSam
    String reassignReassignMode
    String confConfProb
    String overlapOverlapMode
    String overlapOverlapThreshold
    String annotationAnnotationClass
    String piPiPrior
    String thetaThetaPrior
    String emEmEpsilon
    Int maxMaxIter
    Boolean useUseLikelihood
    Boolean skipSkipEm
    String? samSamFile
    String? gtfGtfFile
  }
  command <<<
    telescope assign \
      ~{samSamFile} \
      ~{if defined(attributeAttribute) then ("--attribute " +  '"' + attributeAttribute + '"') else ""} \
      ~{if defined(noNoFeatureKey) then ("--no_feature_key " +  '"' + noNoFeatureKey + '"') else ""} \
      ~{if defined(nNCpu) then ("--ncpu " +  '"' + nNCpu + '"') else ""} \
      ~{if defined(tempdirTempdir) then ("--tempdir " +  '"' + tempdirTempdir + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(expExpTag) then ("--exp_tag " +  '"' + expExpTag + '"') else ""} \
      ~{true="--updated_sam" false="" updatedUpdatedSam} \
      ~{if defined(reassignReassignMode) then ("--reassign_mode " +  '"' + reassignReassignMode + '"') else ""} \
      ~{if defined(confConfProb) then ("--conf_prob " +  '"' + confConfProb + '"') else ""} \
      ~{if defined(overlapOverlapMode) then ("--overlap_mode " +  '"' + overlapOverlapMode + '"') else ""} \
      ~{if defined(overlapOverlapThreshold) then ("--overlap_threshold " +  '"' + overlapOverlapThreshold + '"') else ""} \
      ~{if defined(annotationAnnotationClass) then ("--annotation_class " +  '"' + annotationAnnotationClass + '"') else ""} \
      ~{if defined(piPiPrior) then ("--pi_prior " +  '"' + piPiPrior + '"') else ""} \
      ~{if defined(thetaThetaPrior) then ("--theta_prior " +  '"' + thetaThetaPrior + '"') else ""} \
      ~{if defined(emEmEpsilon) then ("--em_epsilon " +  '"' + emEmEpsilon + '"') else ""} \
      ~{if defined(maxMaxIter) then ("--max_iter " +  '"' + maxMaxIter + '"') else ""} \
      ~{true="--use_likelihood" false="" useUseLikelihood} \
      ~{true="--skip_em" false="" skipSkipEm} \
      ~{gtfGtfFile}
  >>>
}