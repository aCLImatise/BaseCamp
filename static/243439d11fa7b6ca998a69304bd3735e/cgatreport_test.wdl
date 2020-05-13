version 1.0

task CgatreportTest {
  input {
    String trackerTracker
    String pagePage
    String tracksTracks
    String transformerTransformer
    String slicesSlices
    String rendererRenderer
    String trackerTrackerDir
    Boolean forceForce
    String optionOption
    String languageLanguage
    Boolean noNoPrint
    Boolean noNoShow
    String layoutLayout
    Boolean startStartInterpreter
    Boolean startStartIpython
    String workdirWorkdir
    String hardHardCopy
  }
  command <<<
    cgatreport-test \
      ~{if defined(trackerTracker) then ("--tracker " +  '"' + trackerTracker + '"') else ""} \
      ~{if defined(pagePage) then ("--page " +  '"' + pagePage + '"') else ""} \
      ~{if defined(tracksTracks) then ("--tracks " +  '"' + tracksTracks + '"') else ""} \
      ~{if defined(transformerTransformer) then ("--transformer " +  '"' + transformerTransformer + '"') else ""} \
      ~{if defined(slicesSlices) then ("--slices " +  '"' + slicesSlices + '"') else ""} \
      ~{if defined(rendererRenderer) then ("--renderer " +  '"' + rendererRenderer + '"') else ""} \
      ~{if defined(trackerTrackerDir) then ("--trackerdir " +  '"' + trackerTrackerDir + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(optionOption) then ("--option " +  '"' + optionOption + '"') else ""} \
      ~{if defined(languageLanguage) then ("--language " +  '"' + languageLanguage + '"') else ""} \
      ~{true="--no-print" false="" noNoPrint} \
      ~{true="--no-show" false="" noNoShow} \
      ~{if defined(layoutLayout) then ("--layout " +  '"' + layoutLayout + '"') else ""} \
      ~{true="--start-interpreter" false="" startStartInterpreter} \
      ~{true="--start-ipython" false="" startStartIpython} \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(hardHardCopy) then ("--hardcopy " +  '"' + hardHardCopy + '"') else ""}
  >>>
}