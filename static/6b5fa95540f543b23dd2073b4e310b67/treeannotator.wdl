version 1.0

task Treeannotator {
  input {
    String heightsHeights
    String burninBurnin
    String bB
    String limitLimit
    String targetTarget
    String forceForceDiscrete
    String lowmemLowmem
    String hpd2dHpd2d
    String nohpd2dNohpd2d
    Int nosNosA
  }
  command <<<
    treeannotator \
      ~{if defined(heightsHeights) then ("-heights " +  '"' + heightsHeights + '"') else ""} \
      ~{if defined(burninBurnin) then ("-burnin " +  '"' + burninBurnin + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(limitLimit) then ("-limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(targetTarget) then ("-target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(forceForceDiscrete) then ("-forceDiscrete " +  '"' + forceForceDiscrete + '"') else ""} \
      ~{if defined(lowmemLowmem) then ("-lowMem " +  '"' + lowmemLowmem + '"') else ""} \
      ~{if defined(hpd2dHpd2d) then ("-hpd2D " +  '"' + hpd2dHpd2d + '"') else ""} \
      ~{if defined(nohpd2dNohpd2d) then ("-nohpd2D " +  '"' + nohpd2dNohpd2d + '"') else ""} \
      ~{if defined(nosNosA) then ("-noSA " +  '"' + nosNosA + '"') else ""}
  >>>
}