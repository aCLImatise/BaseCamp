version 1.0

task HGCoLoR {
  input {
    Int minMinOrder
    Int solidSolid
    Int seedsSeedsOverlap
    Int seedsSeedsDistance
    Int branchesBranches
    Int seedSeedSkips
    Int mismatchesMismatches
    Int bestBestN
    Int nprocNproc
    String tmpdirTmpdir
    Int kmcKmcMem
  }
  command <<<
    HG-CoLoR \
      ~{if defined(minMinOrder) then ("--minorder " +  '"' + minMinOrder + '"') else ""} \
      ~{if defined(solidSolid) then ("--solid " +  '"' + solidSolid + '"') else ""} \
      ~{if defined(seedsSeedsOverlap) then ("--seedsoverlap " +  '"' + seedsSeedsOverlap + '"') else ""} \
      ~{if defined(seedsSeedsDistance) then ("--seedsdistance " +  '"' + seedsSeedsDistance + '"') else ""} \
      ~{if defined(branchesBranches) then ("--branches " +  '"' + branchesBranches + '"') else ""} \
      ~{if defined(seedSeedSkips) then ("--seedskips " +  '"' + seedSeedSkips + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{if defined(bestBestN) then ("--bestn " +  '"' + bestBestN + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(kmcKmcMem) then ("--kmcmem " +  '"' + kmcKmcMem + '"') else ""}
  >>>
}