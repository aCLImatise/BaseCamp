version 1.0

task Multiqc {
  input {
    Boolean forceForce
    Boolean dirsDirs
    Int dirsDirsDepth
    Boolean fullFullNames
    String titleTitle
    String commentComment
    String filenameFilename
    String outdirOutdir
    Boolean templateTemplate
    String tagTag
    Boolean viewViewTags
    String ignoreIgnore
    String ignoreIgnoreSamples
    Boolean ignoreIgnoreSymlinks
    File sampleSampleNames
    Boolean fileFileList
    Boolean excludeExclude
    Boolean moduleModule
    Boolean dataDataDir
    Boolean noNoDataDir
    Boolean dataDataFormat
    Boolean zipZipDataDir
    Boolean exportExport
    Boolean flatFlat
    Boolean interactiveInteractive
    Boolean lintLint
    Boolean pdfPdf
    Boolean noNoMegaQcUpload
    File configConfig
    String clClConfig
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean noNoAnsi
  }
  command <<<
    multiqc \
      ~{true="--force" false="" forceForce} \
      ~{true="--dirs" false="" dirsDirs} \
      ~{if defined(dirsDirsDepth) then ("--dirs-depth " +  '"' + dirsDirsDepth + '"') else ""} \
      ~{true="--fullnames" false="" fullFullNames} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(commentComment) then ("--comment " +  '"' + commentComment + '"') else ""} \
      ~{if defined(filenameFilename) then ("--filename " +  '"' + filenameFilename + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--template" false="" templateTemplate} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{true="--view-tags" false="" viewViewTags} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{if defined(ignoreIgnoreSamples) then ("--ignore-samples " +  '"' + ignoreIgnoreSamples + '"') else ""} \
      ~{true="--ignore-symlinks" false="" ignoreIgnoreSymlinks} \
      ~{if defined(sampleSampleNames) then ("--sample-names " +  '"' + sampleSampleNames + '"') else ""} \
      ~{true="--file-list" false="" fileFileList} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{true="--module" false="" moduleModule} \
      ~{true="--data-dir" false="" dataDataDir} \
      ~{true="--no-data-dir" false="" noNoDataDir} \
      ~{true="--data-format" false="" dataDataFormat} \
      ~{true="--zip-data-dir" false="" zipZipDataDir} \
      ~{true="--export" false="" exportExport} \
      ~{true="--flat" false="" flatFlat} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{true="--lint" false="" lintLint} \
      ~{true="--pdf" false="" pdfPdf} \
      ~{true="--no-megaqc-upload" false="" noNoMegaQcUpload} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(clClConfig) then ("--cl-config " +  '"' + clClConfig + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--no-ansi" false="" noNoAnsi}
  >>>
}