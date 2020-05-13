version 1.0

task TransabyssMerge {
  input {
    Int minkMink
    Int maxMaxK
    Array[String]+ prefixesPrefixes
    Boolean ssSs
    Boolean forceForce
    File outOut
    Int threadsThreads
    Int lengthLength
    Boolean noNoCleanup
    Boolean abyssAbyssMap
    Boolean abyssAbyssMapItR
    Int inInDel
    Float pidPid
    File? pathPath
  }
  command <<<
    transabyss-merge \
      ~{pathPath} \
      ~{if defined(minkMink) then ("--mink " +  '"' + minkMink + '"') else ""} \
      ~{if defined(maxMaxK) then ("--maxk " +  '"' + maxMaxK + '"') else ""} \
      ~{if defined(prefixesPrefixes) then ("--prefixes " +  '"' + prefixesPrefixes + '"') else ""} \
      ~{true="--SS" false="" ssSs} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--no-cleanup" false="" noNoCleanup} \
      ~{true="--abyssmap" false="" abyssAbyssMap} \
      ~{true="--abyssmap-itr" false="" abyssAbyssMapItR} \
      ~{if defined(inInDel) then ("--indel " +  '"' + inInDel + '"') else ""} \
      ~{if defined(pidPid) then ("--pid " +  '"' + pidPid + '"') else ""}
  >>>
}