version 1.0

task RaconWrapper {
  input {
    Int? split
    Int? subsample
    Boolean? include_unpolished
    Boolean? fragment_correction
    Int? window_length
    Float? quality_threshold
    Float? error_threshold
    Int? match
    Int? mismatch
    Int? gap
    Int? threads
    Int? cuda_aligner_batches
    Int? cuda_poa_batches
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
      ~{if (include_unpolished) then "--include-unpolished" else ""} \
      ~{if (fragment_correction) then "--fragment-correction" else ""} \
      ~{if defined(window_length) then ("--window-length " +  '"' + window_length + '"') else ""} \
      ~{if defined(quality_threshold) then ("--quality-threshold " +  '"' + quality_threshold + '"') else ""} \
      ~{if defined(error_threshold) then ("--error-threshold " +  '"' + error_threshold + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(cuda_aligner_batches) then ("--cudaaligner-batches " +  '"' + cuda_aligner_batches + '"') else ""} \
      ~{if defined(cuda_poa_batches) then ("--cudapoa-batches " +  '"' + cuda_poa_batches + '"') else ""} \
      ~{if (cuda_banded_alignment) then "--cuda-banded-alignment" else ""}
  >>>
  parameter_meta {
    split: "split target sequences into chunks of desired size in\\nbytes (default: None)"
    subsample: "SUBSAMPLE\\nsubsample sequences to desired coverage (2nd argument)\\ngiven the reference length (1st argument) (default:\\nNone)"
    include_unpolished: "output unpolished target sequences (default: False)"
    fragment_correction: "perform fragment correction instead of contig\\npolishing (overlaps file should contain dual/self\\noverlaps!) (default: False)"
    window_length: "size of window on which POA is performed (default:\\n500)"
    quality_threshold: "threshold for average base quality of windows used in\\nPOA (default: 10.0)"
    error_threshold: "maximum allowed error rate used for filtering overlaps\\n(default: 0.3)"
    match: "score for matching bases (default: 5)"
    mismatch: "score for mismatching bases (default: -4)"
    gap: "gap penalty (must be negative) (default: -8)"
    threads: "number of threads (default: 1)"
    cuda_aligner_batches: "number of batches for CUDA accelerated alignment\\n(default: 0)"
    cuda_poa_batches: "number of batches for CUDA accelerated polishing\\n(default: 0)"
    cuda_banded_alignment: "use banding approximation for polishing on GPU. Only\\napplicable when -c is used. (default: False)\\n"
    sequences: "input file in FASTA/FASTQ format (can be compressed\\nwith gzip) containing sequences used for correction"
    overlaps: "input file in MHAP/PAF/SAM format (can be compressed\\nwith gzip) containing overlaps between sequences and\\ntarget sequences"
    target_sequences: "input file in FASTA/FASTQ format (can be compressed\\nwith gzip) containing sequences which will be\\ncorrected"
  }
  output {
    File out_stdout = stdout()
  }
}