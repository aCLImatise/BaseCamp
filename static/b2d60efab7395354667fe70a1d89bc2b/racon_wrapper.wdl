version 1.0

task RaconWrapper {
  input {
    String? split
    String? subsample
    Boolean? include_unpolished
    Boolean? fragment_correction
    String? window_length
    String? quality_threshold
    String? error_threshold
    String? match
    String? mismatch
    String? gap
    String? threads
    String? cuda_aligner_batches
    String? cuda_poa_batches
    Boolean? cuda_banded_alignment
    String sequences
    String overlaps
    String target_sequences
  }
  command <<<
    racon_wrapper \
      ~{sequences} \
      ~{overlaps} \
      ~{target_sequences} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{true="--include-unpolished" false="" include_unpolished} \
      ~{true="--fragment-correction" false="" fragment_correction} \
      ~{if defined(window_length) then ("--window-length " +  '"' + window_length + '"') else ""} \
      ~{if defined(quality_threshold) then ("--quality-threshold " +  '"' + quality_threshold + '"') else ""} \
      ~{if defined(error_threshold) then ("--error-threshold " +  '"' + error_threshold + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(cuda_aligner_batches) then ("--cudaaligner-batches " +  '"' + cuda_aligner_batches + '"') else ""} \
      ~{if defined(cuda_poa_batches) then ("--cudapoa-batches " +  '"' + cuda_poa_batches + '"') else ""} \
      ~{true="--cuda-banded-alignment" false="" cuda_banded_alignment}
  >>>
  parameter_meta {
    split: "split target sequences into chunks of desired size in bytes (default: None)"
    subsample: "SUBSAMPLE subsample sequences to desired coverage (2nd argument) given the reference length (1st argument) (default: None)"
    include_unpolished: "output unpolished target sequences (default: False)"
    fragment_correction: "perform fragment correction instead of contig polishing (overlaps file should contain dual/self overlaps!) (default: False)"
    window_length: "size of window on which POA is performed (default: 500)"
    quality_threshold: "threshold for average base quality of windows used in POA (default: 10.0)"
    error_threshold: "maximum allowed error rate used for filtering overlaps (default: 0.3)"
    match: "score for matching bases (default: 5)"
    mismatch: "score for mismatching bases (default: -4)"
    gap: "gap penalty (must be negative) (default: -8)"
    threads: "number of threads (default: 1)"
    cuda_aligner_batches: "number of batches for CUDA accelerated alignment (default: 0)"
    cuda_poa_batches: "number of batches for CUDA accelerated polishing (default: 0)"
    cuda_banded_alignment: "use banding approximation for polishing on GPU. Only applicable when -c is used. (default: False)"
    sequences: "input file in FASTA/FASTQ format (can be compressed with gzip) containing sequences used for correction"
    overlaps: "input file in MHAP/PAF/SAM format (can be compressed with gzip) containing overlaps between sequences and target sequences"
    target_sequences: "input file in FASTA/FASTQ format (can be compressed with gzip) containing sequences which will be corrected"
  }
}