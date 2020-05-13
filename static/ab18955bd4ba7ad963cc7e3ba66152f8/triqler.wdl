version 1.0

task Triqler {
  input {
    String outOutFile
    String foldFoldChangeEval
    String decoyDecoyPattern
    String minMinSamples
    String numNumThreads
    Boolean tTTest
    Boolean writeWriteSpectrumQuants
    String writeWriteProteinPosteriors
    String writeWriteGroupPosteriors
    String writeWriteFoldChangePosteriors
    String? inInFile
  }
  command <<<
    triqler \
      ~{inInFile} \
      ~{if defined(outOutFile) then ("--out_file " +  '"' + outOutFile + '"') else ""} \
      ~{if defined(foldFoldChangeEval) then ("--fold_change_eval " +  '"' + foldFoldChangeEval + '"') else ""} \
      ~{if defined(decoyDecoyPattern) then ("--decoy_pattern " +  '"' + decoyDecoyPattern + '"') else ""} \
      ~{if defined(minMinSamples) then ("--min_samples " +  '"' + minMinSamples + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--ttest" false="" tTTest} \
      ~{true="--write_spectrum_quants" false="" writeWriteSpectrumQuants} \
      ~{if defined(writeWriteProteinPosteriors) then ("--write_protein_posteriors " +  '"' + writeWriteProteinPosteriors + '"') else ""} \
      ~{if defined(writeWriteGroupPosteriors) then ("--write_group_posteriors " +  '"' + writeWriteGroupPosteriors + '"') else ""} \
      ~{if defined(writeWriteFoldChangePosteriors) then ("--write_fold_change_posteriors " +  '"' + writeWriteFoldChangePosteriors + '"') else ""}
  >>>
}