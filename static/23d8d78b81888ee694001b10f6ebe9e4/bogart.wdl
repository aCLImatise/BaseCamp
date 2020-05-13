version 1.0

task Bogart {
  input {
    Boolean oO
    Boolean gG
    Boolean tT
    String oO
    String bB
    Boolean rsRs
    Boolean nsNs
    Boolean csCs
    String rwRw
    Boolean jJ
    Boolean srSr
    Boolean rR
    Boolean eE
    Boolean dpDp
    String rlRl
    String threadsThreads
    Boolean egEg
    Boolean egEg
    Boolean emEm
    Boolean emEm
    Boolean elEl
    String mM
    String nN
    Boolean createCreate
    Boolean saveSave
    String dD
    String dD
  }
  command <<<
    bogart \
      ~{true="-O" false="" oO} \
      ~{true="-G" false="" gG} \
      ~{true="-T" false="" tT} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{true="-RS" false="" rsRs} \
      ~{true="-NS" false="" nsNs} \
      ~{true="-CS" false="" csCs} \
      ~{if defined(rwRw) then ("-RW " +  '"' + rwRw + '"') else ""} \
      ~{true="-J" false="" jJ} \
      ~{true="-SR" false="" srSr} \
      ~{true="-R" false="" rR} \
      ~{true="-E" false="" eE} \
      ~{true="-DP" false="" dpDp} \
      ~{if defined(rlRl) then ("-RL " +  '"' + rlRl + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="-eg" false="" egEg} \
      ~{true="-Eg" false="" egEg} \
      ~{true="-em" false="" emEm} \
      ~{true="-Em" false="" emEm} \
      ~{true="-el" false="" elEl} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{true="-create" false="" createCreate} \
      ~{true="-save" false="" saveSave} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}