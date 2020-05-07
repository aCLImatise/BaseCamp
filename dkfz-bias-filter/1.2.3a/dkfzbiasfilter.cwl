class: CommandLineTool
id: dkfzbiasfilter.py.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reference_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: filtered_vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: temp_folder
  doc: 'Path to the folder where temporary files are stored [default: /tmp]'
  type: string
  inputBinding:
    prefix: --tempFolder
- id: mapq
  doc: 'Minimal mapping quality of a read to be considered for error count calculation
    [default: 30]'
  type: string
  inputBinding:
    prefix: --mapq
- id: base_q
  doc: 'Minimal base quality to be considered for error count calculation [default:
    13]'
  type: string
  inputBinding:
    prefix: --baseq
- id: quality_scheme
  doc: 'Scheme of quality score used in sequencing (illumina or phred) [default: phred]'
  type: string
  inputBinding:
    prefix: --qualityScheme
- id: pval_th_res
  doc: 'P-value threshold of binomial test for read bias [default: 0.01]'
  type: string
  inputBinding:
    prefix: --pValThres
- id: bias_ratio_min
  doc: 'Minimal bias ratio for a variant to be considered as weakly biased [default:
    0.53]'
  type: string
  inputBinding:
    prefix: --biasRatioMin
- id: bias_ratio_max
  doc: 'Minimal bias ratio for a variant to be considered as strongly biased [default:
    0.63]'
  type: string
  inputBinding:
    prefix: --biasRatioMax
- id: n_reads_min
  doc: 'Minimal number of reads observed for a certain variant to be considered for
    weak bias calculation [default: 20]'
  type: string
  inputBinding:
    prefix: --nReadsMin
- id: nm_utm_in
  doc: 'Minimal number of mutations observed for a certain variant to be considered
    for bias calculation [default: 4]'
  type: string
  inputBinding:
    prefix: --nMutMin
- id: max_op_reads_pcr_weak
  doc: 'Maximal number of reads observed on the opposite strand to flag a variant
    as being weakly pcr biased [default: 0]'
  type: long
  inputBinding:
    prefix: --maxOpReadsPcrWeak
- id: max_op_reads_pcr_strong
  doc: 'Maximal number of reads observed on the opposite strand to flag a variant
    as being strongly pcr biased [default: 1]'
  type: long
  inputBinding:
    prefix: --maxOpReadsPcrStrong
- id: max_op_reads_seq_weak
  doc: 'Maximal number of reads observed on the opposite strand to flag a variant
    as being weakly sequencing biased [default: 0]'
  type: long
  inputBinding:
    prefix: --maxOpReadsSeqWeak
- id: max_op_reads_seq_strong
  doc: 'Maximal number of reads observed on the opposite strand to flag a variant
    as being strongly sequencing biased [default: 1]'
  type: long
  inputBinding:
    prefix: --maxOpReadsSeqStrong
- id: max_op_ratio_pcr
  doc: 'Maximal ratio of reads from opposite strand to flag a variant as pcr biased
    [default: 0.1]'
  type: long
  inputBinding:
    prefix: --maxOpRatioPcr
- id: max_op_ratio_seq
  doc: 'Maximal ratio of reads from opposite strand to flag a variant as pcr biased
    [default: 0.1]'
  type: long
  inputBinding:
    prefix: --maxOpRatioSeq
- id: filter_cycles
  doc: 'Number of filtering cycles. If number of cycles is 0, then the vcf file is
    only annotated with ACGTNacgtn<PLUS | MINUS> entries in the INFO field, and bias
    plots are created before filtering [default: 2]'
  type: string
  inputBinding:
    prefix: --filterCycles
- id: write_qc
  doc: Write quality control? If true, then a folder is created within the same folder
    as the filtered vcf file storing bias plots and qc files
  type: boolean
  inputBinding:
    prefix: --writeQC
- id: pass_only
  doc: Only apply filters to currently passing variants.
  type: boolean
  inputBinding:
    prefix: --passOnly
outputs: []
cwlVersion: v1.1
baseCommand:
- dkfzbiasfilter.py
