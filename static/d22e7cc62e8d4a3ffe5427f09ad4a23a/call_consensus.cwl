class: CommandLineTool
id: call_consensus.py.cwl
inputs:
- id: all_pile_up_file
  doc: Relative or absolute path to the genome-wide pileup file for this sample.
  type: string
  inputBinding:
    position: 0
- id: force
  doc: 'Force processing even when result file already exists and is newer than inputs.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: snp_list_file
  doc: 'Relative or absolute path to the SNP list file across all samples. (default:
    snplist.txt)'
  type: File
  inputBinding:
    prefix: --snpListFile
- id: exclude_file
  doc: 'VCF file of positions to exclude. (default: None)'
  type: File
  inputBinding:
    prefix: --excludeFile
- id: output
  doc: 'Output file. Relative or absolute path to the consensus fasta file for this
    sample. (default: consensus.fasta)'
  type: File
  inputBinding:
    prefix: --output
- id: min_base_qual
  doc: 'Mimimum base quality score to count a read. All other snp filters take effect
    after the low-quality reads are discarded. (default: 0)'
  type: long
  inputBinding:
    prefix: --minBaseQual
- id: min_cons_freq
  doc: 'Consensus frequency. Mimimum fraction of high-quality reads supporting the
    consensus to make a call. (default: 0.6)'
  type: string
  inputBinding:
    prefix: --minConsFreq
- id: min_cons_dpth
  doc: 'Consensus depth. Minimum number of high-quality reads supporting the consensus
    to make a call. (default: 1)'
  type: long
  inputBinding:
    prefix: --minConsDpth
- id: min_cons_str_ddp_th
  doc: 'Consensus strand depth. Minimum number of high-quality reads supporting the
    consensus which must be present on both the forward and reverse strands to make
    a call. (default: 0)'
  type: long
  inputBinding:
    prefix: --minConsStrdDpth
- id: min_cons_st_rd_bias
  doc: 'Strand bias. Minimum fraction of the high-quality consensus-supporting reads
    which must be present on both the forward and reverse strands to make a call.
    The numerator of this fraction is the number of high- quality consensus-supporting
    reads on one strand. The denominator is the total number of high-quality consensus-supporting
    reads on both strands combined. (default: 0)'
  type: string
  inputBinding:
    prefix: --minConsStrdBias
- id: vcf_filename
  doc: 'VCF Output file name. If specified, a VCF file with this file name will be
    created in the same directory as the consensus fasta file for this sample. (default:
    None)'
  type: string
  inputBinding:
    prefix: --vcfFileName
- id: vcf_refname
  doc: 'Name of the reference file. This is only used in the generated VCF file header.
    (default: Unknown reference)'
  type: string
  inputBinding:
    prefix: --vcfRefName
- id: vcf_all_pos
  doc: 'Flag to cause VCF file generation at all positions, not just the snp positions.
    This has no effect on the consensus fasta file, it only affects the VCF file.
    This capability is intended primarily as a diagnostic tool and enabling this flag
    will greatly increase execution time. (default: False)'
  type: boolean
  inputBinding:
    prefix: --vcfAllPos
- id: vcf_preserve_ref_case
  doc: 'Flag to cause the VCF file generator to emit each reference base in uppercase/lowercase
    as it appears in the reference sequence file. If not specified, the reference
    base is emitted in uppercase. (default: False)'
  type: boolean
  inputBinding:
    prefix: --vcfPreserveRefCase
- id: vcf_failed_snp_gt
  doc: '{.,0,1} Controls the VCF file GT data element when a snp fails filters. Possible
    values: .) The GT element will be a dot, indicating unable to make a call. 0)
    The GT element will be 0, indicating the reference base. 1) The GT element will
    be the ALT index of the most commonly occuring base, usually 1. (default: .)'
  type: boolean
  inputBinding:
    prefix: --vcfFailedSnpGt
- id: v
  doc: '0..5, --verbose 0..5 Verbose message level (0=no info, 5=lots) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- call_consensus.py
