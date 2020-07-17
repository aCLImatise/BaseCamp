class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/racon_wrapper.cwl
inputs:
- id: split
  doc: 'split target sequences into chunks of desired size in bytes (default: None)'
  type: string
  inputBinding:
    prefix: --split
- id: subsample
  doc: 'SUBSAMPLE subsample sequences to desired coverage (2nd argument) given the
    reference length (1st argument) (default: None)'
  type: string
  inputBinding:
    prefix: --subsample
- id: include_unpolished
  doc: 'output unpolished target sequences (default: False)'
  type: boolean
  inputBinding:
    prefix: --include-unpolished
- id: fragment_correction
  doc: 'perform fragment correction instead of contig polishing (overlaps file should
    contain dual/self overlaps!) (default: False)'
  type: boolean
  inputBinding:
    prefix: --fragment-correction
- id: window_length
  doc: 'size of window on which POA is performed (default: 500)'
  type: string
  inputBinding:
    prefix: --window-length
- id: quality_threshold
  doc: 'threshold for average base quality of windows used in POA (default: 10.0)'
  type: string
  inputBinding:
    prefix: --quality-threshold
- id: error_threshold
  doc: 'maximum allowed error rate used for filtering overlaps (default: 0.3)'
  type: string
  inputBinding:
    prefix: --error-threshold
- id: match
  doc: 'score for matching bases (default: 5)'
  type: string
  inputBinding:
    prefix: --match
- id: mismatch
  doc: 'score for mismatching bases (default: -4)'
  type: string
  inputBinding:
    prefix: --mismatch
- id: gap
  doc: 'gap penalty (must be negative) (default: -8)'
  type: string
  inputBinding:
    prefix: --gap
- id: threads
  doc: 'number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: cuda_aligner_batches
  doc: 'number of batches for CUDA accelerated alignment (default: 0)'
  type: string
  inputBinding:
    prefix: --cudaaligner-batches
- id: cuda_poa_batches
  doc: 'number of batches for CUDA accelerated polishing (default: 0)'
  type: string
  inputBinding:
    prefix: --cudapoa-batches
- id: cuda_banded_alignment
  doc: 'use banding approximation for polishing on GPU. Only applicable when -c is
    used. (default: False)'
  type: boolean
  inputBinding:
    prefix: --cuda-banded-alignment
- id: sequences
  doc: input file in FASTA/FASTQ format (can be compressed with gzip) containing sequences
    used for correction
  type: string
  inputBinding:
    position: 0
- id: overlaps
  doc: input file in MHAP/PAF/SAM format (can be compressed with gzip) containing
    overlaps between sequences and target sequences
  type: string
  inputBinding:
    position: 1
- id: target_sequences
  doc: input file in FASTA/FASTQ format (can be compressed with gzip) containing sequences
    which will be corrected
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- racon_wrapper
