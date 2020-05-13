version 1.0

task TETyper.py {
  input {
    String outOutPrefix
    String refRef
    String refRefDb
    String fq1Fq1
    String fq2Fq2
    String fq12Fq12
    String bamBam
    String assemblyAssembly
    String spadesSpadesParams
    String structStructProfiles
    String snpSnpProfiles
    String flankFlankLen
    Int minMinReads
    Int minMinEachStrand
    Int minMinMappedLen
    Int minMinQual
    String showShowRegion
    String threadsThreads
    Boolean vV
    Boolean noNoOverwrite
  }
  command <<<
    TETyper.py \
      ~{if defined(outOutPrefix) then ("--outprefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(refRefDb) then ("--refdb " +  '"' + refRefDb + '"') else ""} \
      ~{if defined(fq1Fq1) then ("--fq1 " +  '"' + fq1Fq1 + '"') else ""} \
      ~{if defined(fq2Fq2) then ("--fq2 " +  '"' + fq2Fq2 + '"') else ""} \
      ~{if defined(fq12Fq12) then ("--fq12 " +  '"' + fq12Fq12 + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(assemblyAssembly) then ("--assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{if defined(spadesSpadesParams) then ("--spades_params " +  '"' + spadesSpadesParams + '"') else ""} \
      ~{if defined(structStructProfiles) then ("--struct_profiles " +  '"' + structStructProfiles + '"') else ""} \
      ~{if defined(snpSnpProfiles) then ("--snp_profiles " +  '"' + snpSnpProfiles + '"') else ""} \
      ~{if defined(flankFlankLen) then ("--flank_len " +  '"' + flankFlankLen + '"') else ""} \
      ~{if defined(minMinReads) then ("--min_reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(minMinEachStrand) then ("--min_each_strand " +  '"' + minMinEachStrand + '"') else ""} \
      ~{if defined(minMinMappedLen) then ("--min_mapped_len " +  '"' + minMinMappedLen + '"') else ""} \
      ~{if defined(minMinQual) then ("--min_qual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(showShowRegion) then ("--show_region " +  '"' + showShowRegion + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="--no_overwrite" false="" noNoOverwrite}
  >>>
}