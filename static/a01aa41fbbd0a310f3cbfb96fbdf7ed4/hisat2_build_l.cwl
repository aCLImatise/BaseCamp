class: CommandLineTool
id: hisat2_build_l.cwl
inputs:
- id: reference_in
  doc: comma-separated list of files with ref sequences
  type: string
  inputBinding:
    position: 0
- id: hisat2_index_base
  doc: write ht2l data to files with this dir/basename
  type: string
  inputBinding:
    position: 1
- id: o
  doc: '/--offrate <int>      SA is sampled every 2^offRate BWT chars (default: 5)'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: '/--ftabchars <int>    # of chars consumed in initial lookup (default: 10)'
  type: boolean
  inputBinding:
    prefix: -t
- id: local_off_rate
  doc: 'SA (local) is sampled every 2^offRate BWT chars (default: 3)'
  type: long
  inputBinding:
    prefix: --localoffrate
- id: local_f_tab_chars
  doc: '# of chars consumed in initial lookup in a local index (default: 6)'
  type: long
  inputBinding:
    prefix: --localftabchars
- id: snp
  doc: SNP file name
  type: File
  inputBinding:
    prefix: --snp
- id: haplotype
  doc: haplotype file name
  type: File
  inputBinding:
    prefix: --haplotype
- id: ss
  doc: Splice site file name
  type: File
  inputBinding:
    prefix: --ss
- id: exon
  doc: Exon file name
  type: File
  inputBinding:
    prefix: --exon
- id: repeat_ref
  doc: Repeat reference file name
  type: File
  inputBinding:
    prefix: --repeat-ref
- id: repeat_info
  doc: Repeat information file name
  type: File
  inputBinding:
    prefix: --repeat-info
- id: repeat_snp
  doc: Repeat snp file name
  type: File
  inputBinding:
    prefix: --repeat-snp
- id: repeat_haplotype
  doc: Repeat haplotype file name
  type: File
  inputBinding:
    prefix: --repeat-haplotype
- id: seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: q
  doc: /--quiet              disable verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2-build-l
