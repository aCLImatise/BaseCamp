class: CommandLineTool
id: ultraplex.cwl
inputs:
- id: in_input_fast_q
  doc: fastq file to be demultiplexed
  type: File?
  inputBinding:
    prefix: --inputfastq
- id: in_barcodes
  doc: barcodes for demultiplexing in csv format
  type: string?
  inputBinding:
    prefix: --barcodes
- id: in_optional_output_directory
  doc: "[DIRECTORY], --directory [DIRECTORY]\noptional output directory"
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_m_five
  doc: "[FIVEPRIMEMISMATCHES], --fiveprimemismatches [FIVEPRIMEMISMATCHES]\nnumber\
    \ of mismatches allowed for 5prime barcode\n[DEFAULT 1]"
  type: boolean?
  inputBinding:
    prefix: -m5
- id: in_m_three
  doc: "[THREEPRIMEMISMATCHES], --threeprimemismatches [THREEPRIMEMISMATCHES]\nnumber\
    \ of mismatches allowed for 3prime barcode\n[DEFAULT 0]"
  type: boolean?
  inputBinding:
    prefix: -m3
- id: in_phred_quality_score
  doc: "[PHREDQUALITY], --phredquality [PHREDQUALITY]\nphred quality score for 3prime\
    \ end trimming"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_threads
  doc: "[THREADS], --threads [THREADS]\nthreads [DEFAULT 4]"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_sequencing_adapter_trim
  doc: "[ADAPTER], --adapter [ADAPTER]\nsequencing adapter to trim [DEFAULT Illumina\n\
    AGATCGGAAGAGCGGTTCAG]"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_prefix_output_sequences
  doc: "[OUTPUTPREFIX], --outputprefix [OUTPUTPREFIX]\nprefix for output sequences\
    \ [DEFAULT demux]"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_s_batch_compression
  doc: whether to compress output fastq using SLURM sbatch
  type: boolean?
  inputBinding:
    prefix: --sbatchcompression
- id: in_ultra
  doc: "whether to use ultra mode, which is faster but makes\nvery large temporary\
    \ files"
  type: boolean?
  inputBinding:
    prefix: --ultra
- id: in_ignore_space_warning
  doc: "whether to ignore warnings that there is not enough\nfree space"
  type: boolean?
  inputBinding:
    prefix: --ignore_space_warning
- id: in_minimum_length_reads
  doc: "[MIN_LENGTH], --min_length [MIN_LENGTH]\nminimum length of reads before any\
    \ trimming takes\nplace. Rememberthat this must include UMIs and\nbarcodes, so\
    \ should be fairly long!"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_q_five
  doc: "[PHREDQUALITY_5_PRIME], --phredquality_5_prime [PHREDQUALITY_5_PRIME]\nquality\
    \ trimming minimum score from 5' end - use with\ncaution!"
  type: boolean?
  inputBinding:
    prefix: -q5
- id: in_i_two
  doc: "[INPUT_2], --input_2 [INPUT_2]\nOptional second fastq.gz input for paired\
    \ end data"
  type: boolean?
  inputBinding:
    prefix: -i2
- id: in_a_two
  doc: "[ADAPTER2], --adapter2 [ADAPTER2]\nsequencing adaptor to trim for the reverse\
    \ read\n[Default AGATCGGAAGAGCGTCGTG]"
  type: boolean?
  inputBinding:
    prefix: -a2
- id: in_mt
  doc: "[MIN_TRIM], --min_trim [MIN_TRIM]\nWhen using single end reads for 3' demultiplexing,\n\
    this is the minimum adapter trimming amount for a\n3'barcode to be detected. Default\
    \ = 3"
  type: boolean?
  inputBinding:
    prefix: -mt
- id: in_ignore_no_match
  doc: "Do not write reads for which there is no match.\n"
  type: boolean?
  inputBinding:
    prefix: --ignore_no_match
- id: in_directory
  doc: ''
  type: Directory?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_optional_output_directory
  doc: "[DIRECTORY], --directory [DIRECTORY]\noptional output directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_optional_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ultraplex:1.1.3--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- ultraplex
