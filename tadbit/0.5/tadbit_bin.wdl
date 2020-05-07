version 1.0

task TadbitBin {
  input {
    File workdirWorkdir
    Int resolutionResolution
    Boolean noxNox
    File bamBam
    Int jobidJobid
    Boolean forceForce
    Boolean quietQuiet
    File tmpTmpDb
    String nNChunks
    String cpusCpus
    Array[Int]+ filterFilter
    File biasesBiases
    Array[String]+ normNorm
    Boolean matrixMatrix
    Boolean coolerCooler
    Boolean rowRowNames
    Boolean onlyOnlyPlot
    Boolean interactiveInteractive
    Boolean cC
    Boolean c2C2
    Boolean onlyOnlyTxt
    Boolean plotPlot
    Boolean forceForcePlot
    Boolean triangularTriangular
    String xXTickRotation
    String cmapCmap
    String badBadColor
    String formatFormat
    String zZRange
    String transformTransform
    String figFigSize
  }
  command <<<
    tadbit bin \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{true="--noX" false="" noxNox} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(jobidJobid) then ("--jobid " +  '"' + jobidJobid + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(tmpTmpDb) then ("--tmpdb " +  '"' + tmpTmpDb + '"') else ""} \
      ~{if defined(nNChunks) then ("--nchunks " +  '"' + nNChunks + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(biasesBiases) then ("--biases " +  '"' + biasesBiases + '"') else ""} \
      ~{if defined(normNorm) then ("--norm " +  '"' + normNorm + '"') else ""} \
      ~{true="--matrix" false="" matrixMatrix} \
      ~{true="--cooler" false="" coolerCooler} \
      ~{true="--rownames" false="" rowRowNames} \
      ~{true="--only_plot" false="" onlyOnlyPlot} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{true="-c" false="" cC} \
      ~{true="-c2" false="" c2C2} \
      ~{true="--only_txt" false="" onlyOnlyTxt} \
      ~{true="--plot" false="" plotPlot} \
      ~{true="--force_plot" false="" forceForcePlot} \
      ~{true="--triangular" false="" triangularTriangular} \
      ~{if defined(xXTickRotation) then ("--xtick_rotation " +  '"' + xXTickRotation + '"') else ""} \
      ~{if defined(cmapCmap) then ("--cmap " +  '"' + cmapCmap + '"') else ""} \
      ~{if defined(badBadColor) then ("--bad_color " +  '"' + badBadColor + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(zZRange) then ("--zrange " +  '"' + zZRange + '"') else ""} \
      ~{if defined(transformTransform) then ("--transform " +  '"' + transformTransform + '"') else ""} \
      ~{if defined(figFigSize) then ("--figsize " +  '"' + figFigSize + '"') else ""}
  >>>
}