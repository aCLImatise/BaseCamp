version 1.0

task DropletutilsRead10xCounts.R {
  input {
    String outputOutputObjectFile
  }
  command <<<
    dropletutils-read-10x-counts.R \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}