version 1.0

task ExtractCogs.py {
  input {
    String blastBlastOutfile
    String scoScoVsThreshold
    String pPIdentThreshold
    String cddCddCogFile
    String gffGffFile
  }
  command <<<
    ExtractCogs.py \
      ~{if defined(blastBlastOutfile) then ("--blastoutfile " +  '"' + blastBlastOutfile + '"') else ""} \
      ~{if defined(scoScoVsThreshold) then ("--scovs-threshold " +  '"' + scoScoVsThreshold + '"') else ""} \
      ~{if defined(pPIdentThreshold) then ("--pident-threshold " +  '"' + pPIdentThreshold + '"') else ""} \
      ~{if defined(cddCddCogFile) then ("--cdd_cog_file " +  '"' + cddCddCogFile + '"') else ""} \
      ~{if defined(gffGffFile) then ("--gfffile " +  '"' + gffGffFile + '"') else ""}
  >>>
}