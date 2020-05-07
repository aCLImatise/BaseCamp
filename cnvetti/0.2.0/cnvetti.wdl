version 1.0

task Cnvetti {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    String ioIoThreads
    String? cmdCmd
    String? quickQuick
    String? visualizeVisualize
    String? annotateAnnotate
    String? helpHelp
  }
  command <<<
    cnvetti \
      ~{cmdCmd} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(ioIoThreads) then ("--io-threads " +  '"' + ioIoThreads + '"') else ""} \
      ~{quickQuick} \
      ~{visualizeVisualize} \
      ~{annotateAnnotate} \
      ~{helpHelp}
  >>>
}