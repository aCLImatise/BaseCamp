#!/usr/bin/env cwl-runner

baseCommand:
- dkfzbiasfilter.py
class: CommandLineTool
cwlVersion: v1.0
id: dkfzbiasfilter.py
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bam_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: reference_sequence_file
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: filtered_vcf_file
  inputBinding:
    position: 3
  type: string
- doc: 'Path to the folder where temporary files are stored [default: /tmp]'
  id: temp_folder
  inputBinding:
    prefix: --tempFolder
  type: string
- doc: 'Minimal mapping quality of a read to be considered for error count calculation
    [default: 30]'
  id: mapq
  inputBinding:
    prefix: --mapq
  type: string
- doc: 'Minimal base quality to be considered for error count calculation [default:
    13]'
  id: base_q
  inputBinding:
    prefix: --baseq
  type: string
- doc: 'Scheme of quality score used in sequencing (illumina or phred) [default: phred]'
  id: quality_scheme
  inputBinding:
    prefix: --qualityScheme
  type: string
- doc: 'P-value threshold of binomial test for read bias [default: 0.01]'
  id: pval_th_res
  inputBinding:
    prefix: --pValThres
  type: string
- doc: 'Minimal bias ratio for a variant to be considered as weakly biased [default:
    0.53]'
  id: bias_ratio_min
  inputBinding:
    prefix: --biasRatioMin
  type: string
- doc: 'Minimal bias ratio for a variant to be considered as strongly biased [default:
    0.63]'
  id: bias_ratio_max
  inputBinding:
    prefix: --biasRatioMax
  type: string
- doc: 'Minimal number of reads observed for a certain variant to be considered for
    weak bias calculation [default: 20]'
  id: n_reads_min
  inputBinding:
    prefix: --nReadsMin
  type: string
- doc: 'Minimal number of mutations observed for a certain variant to be considered
    for bias calculation [default: 4]'
  id: nm_utm_in
  inputBinding:
    prefix: --nMutMin
  type: string
- doc: 'Maximal number of reads observed on the opposite strand to flag a variant
    as being weakly pcr biased [default: 0]'
  id: max_op_reads_pcr_weak
  inputBinding:
    prefix: --maxOpReadsPcrWeak
  type: long
- doc: 'Maximal number of reads observed on the opposite strand to flag a variant
    as being strongly pcr biased [default: 1]'
  id: max_op_reads_pcr_strong
  inputBinding:
    prefix: --maxOpReadsPcrStrong
  type: long
- doc: 'Maximal number of reads observed on the opposite strand to flag a variant
    as being weakly sequencing biased [default: 0]'
  id: max_op_reads_seq_weak
  inputBinding:
    prefix: --maxOpReadsSeqWeak
  type: long
- doc: 'Maximal number of reads observed on the opposite strand to flag a variant
    as being strongly sequencing biased [default: 1]'
  id: max_op_reads_seq_strong
  inputBinding:
    prefix: --maxOpReadsSeqStrong
  type: long
- doc: 'Maximal ratio of reads from opposite strand to flag a variant as pcr biased
    [default: 0.1]'
  id: max_op_ratio_pcr
  inputBinding:
    prefix: --maxOpRatioPcr
  type: long
- doc: 'Maximal ratio of reads from opposite strand to flag a variant as pcr biased
    [default: 0.1]'
  id: max_op_ratio_seq
  inputBinding:
    prefix: --maxOpRatioSeq
  type: long
- doc: 'Number of filtering cycles. If number of cycles is 0, then the vcf file is
    only annotated with ACGTNacgtn<PLUS | MINUS> entries in the INFO field, and bias
    plots are created before filtering [default: 2]'
  id: filter_cycles
  inputBinding:
    prefix: --filterCycles
  type: string
- doc: Write quality control? If true, then a folder is created within the same folder
    as the filtered vcf file storing bias plots and qc files
  id: write_qc
  inputBinding:
    prefix: --writeQC
  type: boolean
- doc: Only apply filters to currently passing variants.
  id: pass_only
  inputBinding:
    prefix: --passOnly
  type: boolean
