version 1.0

task CalcProb.py {
  input {
    Boolean miniMiniNs
    Boolean maxMaxIns
    Boolean orientationsOrientations
    Boolean bowtie2Bowtie2Index
    Boolean threadsThreads
    Boolean assemblyAssemblyFastA
    Boolean inputInputSamFiles
    Boolean outputOutputSamFile
    Boolean muMu
    Boolean sigmaSigma
    Boolean maxMaxAlignments
    Boolean debugDebugLevel
  }
  command <<<
    calc_prob.py \
      ~{true="--minins" false="" miniMiniNs} \
      ~{true="--maxins" false="" maxMaxIns} \
      ~{true="--orientations" false="" orientationsOrientations} \
      ~{true="--bowtie2_index" false="" bowtie2Bowtie2Index} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--assembly_fasta" false="" assemblyAssemblyFastA} \
      ~{true="--input_sam_files" false="" inputInputSamFiles} \
      ~{true="--output_sam_file" false="" outputOutputSamFile} \
      ~{true="--mu" false="" muMu} \
      ~{true="--sigma" false="" sigmaSigma} \
      ~{true="--max_alignments" false="" maxMaxAlignments} \
      ~{true="--debug_level" false="" debugDebugLevel}
  >>>
}