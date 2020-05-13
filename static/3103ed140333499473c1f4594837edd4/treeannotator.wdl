version 1.0

task Treeannotator {
  input {
    String heightsHeights
    String burninBurnin
    String burninBurninTrees
    String limitLimit
    String targetTarget
    String forceForceDiscrete
    String hpd2dHpd2d
  }
  command <<<
    treeannotator \
      ~{if defined(heightsHeights) then ("-heights " +  '"' + heightsHeights + '"') else ""} \
      ~{if defined(burninBurnin) then ("-burnin " +  '"' + burninBurnin + '"') else ""} \
      ~{if defined(burninBurninTrees) then ("-burninTrees " +  '"' + burninBurninTrees + '"') else ""} \
      ~{if defined(limitLimit) then ("-limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(targetTarget) then ("-target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(forceForceDiscrete) then ("-forceDiscrete " +  '"' + forceForceDiscrete + '"') else ""} \
      ~{if defined(hpd2dHpd2d) then ("-hpd2D " +  '"' + hpd2dHpd2d + '"') else ""}
  >>>
}