version 1.0

task Simulate {
  input {
    Boolean distributionDistribution
    Boolean numpointsNumpoints
    Boolean verboseVerbose
    Boolean seedSeed
    Boolean countCountFilename
    Boolean covCovFilename
    Boolean formatFormat
    Boolean aboutAbout
    String? optionsOptions
  }
  command <<<
    Simulate \
      ~{optionsOptions} \
      ~{true="-distribution" false="" distributionDistribution} \
      ~{true="-numPoints" false="" numpointsNumpoints} \
      ~{true="-VERBOSE" false="" verboseVerbose} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-countFilename" false="" countCountFilename} \
      ~{true="-covFilename" false="" covCovFilename} \
      ~{true="-format" false="" formatFormat} \
      ~{true="-about" false="" aboutAbout}
  >>>
}