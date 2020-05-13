version 1.0

task Decoypyrat {
  input {
    String cleavageCleavageSites
    String antiAntiCleavageSites
    String cleavageCleavagePosition
    Int minMinPeptideLength
    Int maxMaxIterations
    Boolean doDoNotShuffle
    Boolean doDoNotSwitch
    String decoyDecoyPrefix
    String outputOutputFastA
    String tempTempFile
    Boolean noNoIsobaric
    Boolean memoryMemorySave
    Boolean keepKeepNames
  }
  command <<<
    decoypyrat \
      ~{if defined(cleavageCleavageSites) then ("--cleavage_sites " +  '"' + cleavageCleavageSites + '"') else ""} \
      ~{if defined(antiAntiCleavageSites) then ("--anti_cleavage_sites " +  '"' + antiAntiCleavageSites + '"') else ""} \
      ~{if defined(cleavageCleavagePosition) then ("--cleavage_position " +  '"' + cleavageCleavagePosition + '"') else ""} \
      ~{if defined(minMinPeptideLength) then ("--min_peptide_length " +  '"' + minMinPeptideLength + '"') else ""} \
      ~{if defined(maxMaxIterations) then ("--max_iterations " +  '"' + maxMaxIterations + '"') else ""} \
      ~{true="--do_not_shuffle" false="" doDoNotShuffle} \
      ~{true="--do_not_switch" false="" doDoNotSwitch} \
      ~{if defined(decoyDecoyPrefix) then ("--decoy_prefix " +  '"' + decoyDecoyPrefix + '"') else ""} \
      ~{if defined(outputOutputFastA) then ("--output_fasta " +  '"' + outputOutputFastA + '"') else ""} \
      ~{if defined(tempTempFile) then ("--temp_file " +  '"' + tempTempFile + '"') else ""} \
      ~{true="--no_isobaric" false="" noNoIsobaric} \
      ~{true="--memory_save" false="" memoryMemorySave} \
      ~{true="--keep_names" false="" keepKeepNames}
  >>>
}