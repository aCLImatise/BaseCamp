version 1.0

task IgdiscoverClonotypes {
  input {
    Boolean sortSort
    String limitLimit
    String vVShmThreshold
    String cdr3Cdr3Core
    String mismatchesMismatches
    Boolean aaAa
    File membersMembers
  }
  command <<<
    igdiscover clonotypes \
      ~{true="--sort" false="" sortSort} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(vVShmThreshold) then ("--v-shm-threshold " +  '"' + vVShmThreshold + '"') else ""} \
      ~{if defined(cdr3Cdr3Core) then ("--cdr3-core " +  '"' + cdr3Cdr3Core + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{true="--aa" false="" aaAa} \
      ~{if defined(membersMembers) then ("--members " +  '"' + membersMembers + '"') else ""}
  >>>
}