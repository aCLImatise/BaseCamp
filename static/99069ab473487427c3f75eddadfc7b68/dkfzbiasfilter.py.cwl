class: CommandLineTool
id: dkfzbiasfilter.py.cwl
inputs:
- id: in_temp_folder
  doc: "Path to the folder where temporary files are stored\n[default: /tmp]"
  type: Directory?
  inputBinding:
    prefix: --tempFolder
- id: in_mapq
  doc: "Minimal mapping quality of a read to be considered for\nerror count calculation\
    \ [default: 30]"
  type: long?
  inputBinding:
    prefix: --mapq
- id: in_base_q
  doc: "Minimal base quality to be considered for error count\ncalculation [default:\
    \ 13]"
  type: long?
  inputBinding:
    prefix: --baseq
- id: in_quality_scheme
  doc: "Scheme of quality score used in sequencing (illumina\nor phred) [default:\
    \ phred]"
  type: string?
  inputBinding:
    prefix: --qualityScheme
- id: in_pval_th_res
  doc: "P-value threshold of binomial test for read bias\n[default: 0.01]"
  type: double?
  inputBinding:
    prefix: --pValThres
- id: in_bias_ratio_min
  doc: "Minimal bias ratio for a variant to be considered as\nweakly biased [default:\
    \ 0.53]"
  type: long?
  inputBinding:
    prefix: --biasRatioMin
- id: in_bias_ratio_max
  doc: "Minimal bias ratio for a variant to be considered as\nstrongly biased [default:\
    \ 0.63]"
  type: long?
  inputBinding:
    prefix: --biasRatioMax
- id: in_n_reads_min
  doc: "Minimal number of reads observed for a certain variant\nto be considered for\
    \ weak bias calculation [default:\n20]"
  type: long?
  inputBinding:
    prefix: --nReadsMin
- id: in_nm_utm_in
  doc: "Minimal number of mutations observed for a certain\nvariant to be considered\
    \ for bias calculation\n[default: 4]"
  type: long?
  inputBinding:
    prefix: --nMutMin
- id: in_max_op_reads_pcr_weak
  doc: "Maximal number of reads observed on the opposite\nstrand to flag a variant\
    \ as being weakly pcr biased\n[default: 0]"
  type: long?
  inputBinding:
    prefix: --maxOpReadsPcrWeak
- id: in_max_op_reads_pcr_strong
  doc: "Maximal number of reads observed on the opposite\nstrand to flag a variant\
    \ as being strongly pcr biased\n[default: 1]"
  type: long?
  inputBinding:
    prefix: --maxOpReadsPcrStrong
- id: in_max_op_reads_seq_weak
  doc: "Maximal number of reads observed on the opposite\nstrand to flag a variant\
    \ as being weakly sequencing\nbiased [default: 0]"
  type: long?
  inputBinding:
    prefix: --maxOpReadsSeqWeak
- id: in_max_op_reads_seq_strong
  doc: "Maximal number of reads observed on the opposite\nstrand to flag a variant\
    \ as being strongly sequencing\nbiased [default: 1]"
  type: long?
  inputBinding:
    prefix: --maxOpReadsSeqStrong
- id: in_max_op_ratio_pcr
  doc: "Maximal ratio of reads from opposite strand to flag a\nvariant as pcr biased\
    \ [default: 0.1]"
  type: long?
  inputBinding:
    prefix: --maxOpRatioPcr
- id: in_max_op_ratio_seq
  doc: "Maximal ratio of reads from opposite strand to flag a\nvariant as pcr biased\
    \ [default: 0.1]"
  type: long?
  inputBinding:
    prefix: --maxOpRatioSeq
- id: in_filter_cycles
  doc: "Number of filtering cycles. If number of cycles is 0,\nthen the vcf file is\
    \ only annotated with\nACGTNacgtn<PLUS | MINUS> entries in the INFO field,\nand\
    \ bias plots are created before filtering [default:\n2]"
  type: long?
  inputBinding:
    prefix: --filterCycles
- id: in_write_qc
  doc: "Write quality control? If true, then a folder is\ncreated within the same\
    \ folder as the filtered vcf\nfile storing bias plots and qc files"
  type: boolean?
  inputBinding:
    prefix: --writeQC
- id: in_pass_only
  doc: Only apply filters to currently passing variants.
  type: boolean?
  inputBinding:
    prefix: --passOnly
- id: in_vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reference_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_filtered_vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dkfzbiasfilter.py
