version 1.0

task Falco {
  input {
    Boolean outdirOutdir
    Boolean casaCasaVa
    Boolean nanoNano
    Boolean noNoFilter
    Boolean noNoExtract
    Boolean nogroupNogroup
    Boolean formatFormat
    Boolean threadsThreads
    Boolean contaminantsContaminants
    Boolean adaptersAdapters
    Boolean limitsLimits
    Boolean skipSkipText
    Boolean skipSkipHtml
    Boolean skipSkipShortSummary
    Boolean quietQuiet
    Boolean dirDir
    Boolean advancedAdvancedMode
    Boolean bisulfiteBisulfite
    Boolean reverseReverseComplement
    Boolean aboutAbout
    String? optionsOptions
    String? seqfile1Seqfile1
    String? optionsOptions
  }
  command <<<
    falco \
      ~{optionsOptions} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--casava" false="" casaCasaVa} \
      ~{true="--nano" false="" nanoNano} \
      ~{true="--nofilter" false="" noNoFilter} \
      ~{true="--noextract" false="" noNoExtract} \
      ~{true="--nogroup" false="" nogroupNogroup} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--contaminants" false="" contaminantsContaminants} \
      ~{true="--adapters" false="" adaptersAdapters} \
      ~{true="--limits" false="" limitsLimits} \
      ~{true="--skip-text" false="" skipSkipText} \
      ~{true="--skip-html" false="" skipSkipHtml} \
      ~{true="--skip-short-summary" false="" skipSkipShortSummary} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--dir" false="" dirDir} \
      ~{true="--advanced-mode" false="" advancedAdvancedMode} \
      ~{true="--bisulfite" false="" bisulfiteBisulfite} \
      ~{true="--reverse-complement" false="" reverseReverseComplement} \
      ~{true="-about" false="" aboutAbout} \
      ~{seqfile1Seqfile1} \
      ~{optionsOptions}
  >>>
}