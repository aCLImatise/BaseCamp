version 1.0

task FEELncFilter.pl {
  input {
    Boolean manMan
    Boolean verbosityVerbosity
    File inInFile
    File mrnaMrnaFile
    Boolean sizeSize
    Boolean biotypeBiotype
    Boolean lincLincOnly
    Boolean monoMonoEx
    Boolean biexBiex
    Boolean minMinFracOver
    Boolean procProc
    File outOutLog
  }
  command <<<
    FEELnc_filter.pl \
      ~{true="--man" false="" manMan} \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(mrnaMrnaFile) then ("--mRNAfile " +  '"' + mrnaMrnaFile + '"') else ""} \
      ~{true="--size" false="" sizeSize} \
      ~{true="--biotype" false="" biotypeBiotype} \
      ~{true="--linconly" false="" lincLincOnly} \
      ~{true="--monoex" false="" monoMonoEx} \
      ~{true="--biex" false="" biexBiex} \
      ~{true="--minfrac_over" false="" minMinFracOver} \
      ~{true="--proc" false="" procProc} \
      ~{if defined(outOutLog) then ("--outlog " +  '"' + outOutLog + '"') else ""}
  >>>
}