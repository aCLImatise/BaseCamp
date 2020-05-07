version 1.0

task Emapper.py {
  input {
    Boolean taxTaxScope
    String targetTargetOrthologs
    Boolean excludedExcludedTaxA
    String goGoEvidence
    Boolean hmmHmmMaxHits
    Boolean hmmHmmEvalue
    Boolean hmmHmmScore
    Boolean hmmHmmMaxSeqLen
    Boolean hmmHmmQCov
    Boolean zZ
    String dmDmNdDb
    String matrixMatrix
    String gapGapOpen
    String gapGapExtend
    String queryQueryCover
    String subjectSubjectCover
    Boolean seedSeedOrthologEvalue
    Boolean seedSeedOrthologScore
    Boolean outputOutput
    Boolean resumeResume
    Boolean overrideOverride
    Boolean noNoRefine
    Boolean noNoAnNot
    Boolean noNoSearch
    Boolean predictPredictOrtho
    Boolean reportReportOrthologs
    Boolean scratchScratchDir
    Boolean outputOutputDir
    Boolean tempTempDir
    Boolean noNoFileComments
    Boolean keepKeepMappingFiles
    Array[String]+ targetTargetTaxA
    String predictPredictOutputFormat
    String mM
    Boolean iI
    Boolean translateTranslate
    Boolean serverServerMode
    Boolean useUseMem
    Boolean annotateAnnotateHitsTable
  }
  command <<<
    emapper.py \
      ~{true="--tax_scope" false="" taxTaxScope} \
      ~{if defined(targetTargetOrthologs) then ("--target_orthologs " +  '"' + targetTargetOrthologs + '"') else ""} \
      ~{true="--excluded_taxa" false="" excludedExcludedTaxA} \
      ~{if defined(goGoEvidence) then ("--go_evidence " +  '"' + goGoEvidence + '"') else ""} \
      ~{true="--hmm_maxhits" false="" hmmHmmMaxHits} \
      ~{true="--hmm_evalue" false="" hmmHmmEvalue} \
      ~{true="--hmm_score" false="" hmmHmmScore} \
      ~{true="--hmm_maxseqlen" false="" hmmHmmMaxSeqLen} \
      ~{true="--hmm_qcov" false="" hmmHmmQCov} \
      ~{true="--Z" false="" zZ} \
      ~{if defined(dmDmNdDb) then ("--dmnd_db " +  '"' + dmDmNdDb + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gapopen " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(gapGapExtend) then ("--gapextend " +  '"' + gapGapExtend + '"') else ""} \
      ~{if defined(queryQueryCover) then ("--query-cover " +  '"' + queryQueryCover + '"') else ""} \
      ~{if defined(subjectSubjectCover) then ("--subject-cover " +  '"' + subjectSubjectCover + '"') else ""} \
      ~{true="--seed_ortholog_evalue" false="" seedSeedOrthologEvalue} \
      ~{true="--seed_ortholog_score" false="" seedSeedOrthologScore} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--resume" false="" resumeResume} \
      ~{true="--override" false="" overrideOverride} \
      ~{true="--no_refine" false="" noNoRefine} \
      ~{true="--no_annot" false="" noNoAnNot} \
      ~{true="--no_search" false="" noNoSearch} \
      ~{true="--predict_ortho" false="" predictPredictOrtho} \
      ~{true="--report_orthologs" false="" reportReportOrthologs} \
      ~{true="--scratch_dir" false="" scratchScratchDir} \
      ~{true="--output_dir" false="" outputOutputDir} \
      ~{true="--temp_dir" false="" tempTempDir} \
      ~{true="--no_file_comments" false="" noNoFileComments} \
      ~{true="--keep_mapping_files" false="" keepKeepMappingFiles} \
      ~{if defined(targetTargetTaxA) then ("--target_taxa " +  '"' + targetTargetTaxA + '"') else ""} \
      ~{if defined(predictPredictOutputFormat) then ("--predict_output_format " +  '"' + predictPredictOutputFormat + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="--translate" false="" translateTranslate} \
      ~{true="--servermode" false="" serverServerMode} \
      ~{true="--usemem" false="" useUseMem} \
      ~{true="--annotate_hits_table" false="" annotateAnnotateHitsTable}
  >>>
}