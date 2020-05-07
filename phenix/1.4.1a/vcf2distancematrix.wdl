version 1.0

task Vcf2distancematrix.py {
  input {
    String outOut
    String deletionDeletion
    String substitutionSubstitution
    String includeInclude
    String excludeExclude
    Boolean removeRemoveRecombination
    String refRefGenome
    String refRefGenomeName
    Float thresholdThreshold
    Int threadsThreads
    String formatFormat
    File treeTree
    Boolean withWithStats
  }
  command <<<
    vcf2distancematrix.py \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(deletionDeletion) then ("--deletion " +  '"' + deletionDeletion + '"') else ""} \
      ~{if defined(substitutionSubstitution) then ("--substitution " +  '"' + substitutionSubstitution + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--remove-recombination" false="" removeRemoveRecombination} \
      ~{if defined(refRefGenome) then ("--refgenome " +  '"' + refRefGenome + '"') else ""} \
      ~{if defined(refRefGenomeName) then ("--refgenomename " +  '"' + refRefGenomeName + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{true="--with-stats" false="" withWithStats}
  >>>
}