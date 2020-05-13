version 1.0

task VtoolsImport {
  input {
    String buildBuild
    String formatFormat
    Boolean sampleSampleName
    Boolean forceForce
    String jobsJobs
    Boolean sortSort
    Boolean vV
    String? inputInputFiles
  }
  command <<<
    vtools import \
      ~{inputInputFiles} \
      ~{if defined(buildBuild) then ("--build " +  '"' + buildBuild + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--sample_name" false="" sampleSampleName} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="--sort" false="" sortSort} \
      ~{true="-v" false="" vV}
  >>>
}