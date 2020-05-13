version 1.0

task DISCASM {
  input {
    String chimericChimericJunctions
    String alignedAlignedBam
    String leftLeftFq
    String rightRightFq
    String outOutDir
    String deDeNovoAssembler
    String addAddTrinityParams
    Boolean normalizeNormalizeReads
  }
  command <<<
    DISCASM \
      ~{if defined(chimericChimericJunctions) then ("--chimeric_junctions " +  '"' + chimericChimericJunctions + '"') else ""} \
      ~{if defined(alignedAlignedBam) then ("--aligned_bam " +  '"' + alignedAlignedBam + '"') else ""} \
      ~{if defined(leftLeftFq) then ("--left_fq " +  '"' + leftLeftFq + '"') else ""} \
      ~{if defined(rightRightFq) then ("--right_fq " +  '"' + rightRightFq + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(deDeNovoAssembler) then ("--denovo_assembler " +  '"' + deDeNovoAssembler + '"') else ""} \
      ~{if defined(addAddTrinityParams) then ("--add_trinity_params " +  '"' + addAddTrinityParams + '"') else ""} \
      ~{true="--normalize_reads" false="" normalizeNormalizeReads}
  >>>
}