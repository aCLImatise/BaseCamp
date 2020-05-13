version 1.0

task PathoscopeMAP {
  input {
    String targetTargetRefFiles
    String filterFilterRefFiles
    String targetTargetAlignParams
    String filterFilterAlignParams
    String outdirOutdir
    String outOutAlign
    String indexIndexDir
    String targetTargetIndexPrefixes
    String filterFilterIndexPrefixes
    String targetTargetAlignFiles
    String filterFilterAlignFiles
    String btBtHome
    String numNumThreads
    String expExpTag
  }
  command <<<
    pathoscope MAP \
      ~{if defined(targetTargetRefFiles) then ("-targetRefFiles " +  '"' + targetTargetRefFiles + '"') else ""} \
      ~{if defined(filterFilterRefFiles) then ("-filterRefFiles " +  '"' + filterFilterRefFiles + '"') else ""} \
      ~{if defined(targetTargetAlignParams) then ("-targetAlignParams " +  '"' + targetTargetAlignParams + '"') else ""} \
      ~{if defined(filterFilterAlignParams) then ("-filterAlignParams " +  '"' + filterFilterAlignParams + '"') else ""} \
      ~{if defined(outdirOutdir) then ("-outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutAlign) then ("-outAlign " +  '"' + outOutAlign + '"') else ""} \
      ~{if defined(indexIndexDir) then ("-indexDir " +  '"' + indexIndexDir + '"') else ""} \
      ~{if defined(targetTargetIndexPrefixes) then ("-targetIndexPrefixes " +  '"' + targetTargetIndexPrefixes + '"') else ""} \
      ~{if defined(filterFilterIndexPrefixes) then ("-filterIndexPrefixes " +  '"' + filterFilterIndexPrefixes + '"') else ""} \
      ~{if defined(targetTargetAlignFiles) then ("-targetAlignFiles " +  '"' + targetTargetAlignFiles + '"') else ""} \
      ~{if defined(filterFilterAlignFiles) then ("-filterAlignFiles " +  '"' + filterFilterAlignFiles + '"') else ""} \
      ~{if defined(btBtHome) then ("-btHome " +  '"' + btBtHome + '"') else ""} \
      ~{if defined(numNumThreads) then ("-numThreads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(expExpTag) then ("-expTag " +  '"' + expExpTag + '"') else ""}
  >>>
}