version 1.0

task TacoRun {
  input {
    String outputOutputDir
    String numNumProcesses
    Boolean verboseVerbose
    Boolean resumeResume
    String assembleAssemble
    String gtfGtfExprAttr
    String filterFilterMinLength
    String filterFilterMinExpr
    Boolean filterFilterSpliceJunCs
    String addAddSpliceMotif
    String refRefGenomeFastA
    String isoformIsoformFrac
    String maxMaxIsoforms
    Boolean assembleAssembleUnStranded
    Boolean noNoAssembleUnStranded
    Boolean changeChangePoint
    Boolean noNoChangePoint
    Float changeChangePointPValue
    Float changeChangePointFoldChange
    Boolean changeChangePointTrim
    Boolean noNoChangePointTrim
    String pathPathKmax
    String pathPathFrac
    String maxMaxPaths
  }
  command <<<
    taco_run \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(numNumProcesses) then ("--num-processes " +  '"' + numNumProcesses + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--resume" false="" resumeResume} \
      ~{if defined(assembleAssemble) then ("--assemble " +  '"' + assembleAssemble + '"') else ""} \
      ~{if defined(gtfGtfExprAttr) then ("--gtf-expr-attr " +  '"' + gtfGtfExprAttr + '"') else ""} \
      ~{if defined(filterFilterMinLength) then ("--filter-min-length " +  '"' + filterFilterMinLength + '"') else ""} \
      ~{if defined(filterFilterMinExpr) then ("--filter-min-expr " +  '"' + filterFilterMinExpr + '"') else ""} \
      ~{true="--filter-splice-juncs" false="" filterFilterSpliceJunCs} \
      ~{if defined(addAddSpliceMotif) then ("--add-splice-motif " +  '"' + addAddSpliceMotif + '"') else ""} \
      ~{if defined(refRefGenomeFastA) then ("--ref-genome-fasta " +  '"' + refRefGenomeFastA + '"') else ""} \
      ~{if defined(isoformIsoformFrac) then ("--isoform-frac " +  '"' + isoformIsoformFrac + '"') else ""} \
      ~{if defined(maxMaxIsoforms) then ("--max-isoforms " +  '"' + maxMaxIsoforms + '"') else ""} \
      ~{true="--assemble-unstranded" false="" assembleAssembleUnStranded} \
      ~{true="--no-assemble-unstranded" false="" noNoAssembleUnStranded} \
      ~{true="--change-point" false="" changeChangePoint} \
      ~{true="--no-change-point" false="" noNoChangePoint} \
      ~{if defined(changeChangePointPValue) then ("--change-point-pvalue " +  '"' + changeChangePointPValue + '"') else ""} \
      ~{if defined(changeChangePointFoldChange) then ("--change-point-fold-change " +  '"' + changeChangePointFoldChange + '"') else ""} \
      ~{true="--change-point-trim" false="" changeChangePointTrim} \
      ~{true="--no-change-point-trim" false="" noNoChangePointTrim} \
      ~{if defined(pathPathKmax) then ("--path-kmax " +  '"' + pathPathKmax + '"') else ""} \
      ~{if defined(pathPathFrac) then ("--path-frac " +  '"' + pathPathFrac + '"') else ""} \
      ~{if defined(maxMaxPaths) then ("--max-paths " +  '"' + maxMaxPaths + '"') else ""}
  >>>
}