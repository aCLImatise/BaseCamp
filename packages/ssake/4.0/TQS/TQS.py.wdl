version 1.0

task TQSpy {
  input {
    File? sequence
    File? qual
    Int? length
    Int? threshold
    Int? difference
    Int? consec
    Boolean? verbose
  }
  command <<<
    TQS_py \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(qual) then ("--qual " +  '"' + qual + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(difference) then ("--difference " +  '"' + difference + '"') else ""} \
      ~{if defined(consec) then ("--consec " +  '"' + consec + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    sequence: "=SEQFILE\\nIllumina sequence file - Output format from the 1G\\nGenome Analyzer (_seq.txt):\\n7       1       255     669\\nAACCCCCACTCCTACAACGCCATCATTCCCCTCGAC"
    qual: "=QUALFILE\\nA prb file containing all the Illumina intensities, as\\noutputted by the 1G Genome Analyzer (_prb.txt)"
    length: "Length of sequence reads (i.e. Number of sequencing\\ncycles, default=36)"
    threshold: "Base intensity threshold value (-40 to 40, default=5)"
    difference: "Base intensity difference between top intensity and\\nsecond best (1 to 80, default=5)"
    consec: "Minimum number of consecutive bases passing threshold\\nvalues (default=20)"
    verbose: "Runs in Verbose mode."
  }
  output {
    File out_stdout = stdout()
    File out_sequence = "${in_sequence}"
  }
}