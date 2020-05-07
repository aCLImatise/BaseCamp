version 1.0

task RelocaTE2.py {
  input {
    String unpairedUnpairedId
    String sampleSample
    String alignerAligner
    String lenLenCutMatch
    String lenLenCutTrim
    String mismatchMismatch
    String mismatchMismatchJunction
    String stepStep
    Boolean dryDryRun
    Boolean runRun
    Boolean splitSplit
    String verboseVerbose
  }
  command <<<
    relocaTE2.py \
      ~{if defined(unpairedUnpairedId) then ("--unpaired_id " +  '"' + unpairedUnpairedId + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(lenLenCutMatch) then ("--len_cut_match " +  '"' + lenLenCutMatch + '"') else ""} \
      ~{if defined(lenLenCutTrim) then ("--len_cut_trim " +  '"' + lenLenCutTrim + '"') else ""} \
      ~{if defined(mismatchMismatch) then ("--mismatch " +  '"' + mismatchMismatch + '"') else ""} \
      ~{if defined(mismatchMismatchJunction) then ("--mismatch_junction " +  '"' + mismatchMismatchJunction + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{true="--dry_run" false="" dryDryRun} \
      ~{true="--run" false="" runRun} \
      ~{true="--split" false="" splitSplit} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}