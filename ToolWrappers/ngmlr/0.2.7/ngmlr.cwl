class: CommandLineTool
id: ngmlr.cwl
inputs:
- id: in__reference_filerequired
  doc: ",  --reference <file>\n(required)  Path to the reference genome (FASTA/Q,\
    \ can be gzipped)"
  type: File
  inputBinding:
    prefix: -r
- id: in__query_filepath
  doc: ",  --query <file>\nPath to the read file (FASTA/Q) [/dev/stdin]"
  type: File
  inputBinding:
    prefix: -q
- id: in__output_stringadds
  doc: ",  --output <string>\nAdds RG:Z:<string> to all alignments in SAM/BAM [none]"
  type: string
  inputBinding:
    prefix: -o
- id: in_skip_write
  doc: Don't write reference index to disk [false]
  type: boolean
  inputBinding:
    prefix: --skip-write
- id: in_bam_fix
  doc: Report reads with > 64k CIGAR operations as unmapped. Required to be compatibel
    to BAM format [false]
  type: boolean
  inputBinding:
    prefix: --bam-fix
- id: in_rg_id
  doc: Adds RG:Z:<string> to all alignments in SAM/BAM [none]
  type: string
  inputBinding:
    prefix: --rg-id
- id: in_rg_sm
  doc: 'RG header: Sample [none]'
  type: string
  inputBinding:
    prefix: --rg-sm
- id: in_rg_lb
  doc: 'RG header: Library [none]'
  type: string
  inputBinding:
    prefix: --rg-lb
- id: in_rg_pl
  doc: 'RG header: Platform [none]'
  type: string
  inputBinding:
    prefix: --rg-pl
- id: in_rg_ds
  doc: 'RG header: Description [none]'
  type: string
  inputBinding:
    prefix: --rg-ds
- id: in_rg_dt
  doc: 'RG header: Date (format: YYYY-MM-DD) [none]'
  type: string
  inputBinding:
    prefix: --rg-dt
- id: in_rg_pu
  doc: 'RG header: Platform unit [none]'
  type: string
  inputBinding:
    prefix: --rg-pu
- id: in_rg_pi
  doc: 'RG header: Median insert size [none]'
  type: long
  inputBinding:
    prefix: --rg-pi
- id: in_rg_pg
  doc: 'RG header: Programs [none]'
  type: string
  inputBinding:
    prefix: --rg-pg
- id: in_rg_cn
  doc: 'RG header: sequencing center [none]'
  type: string
  inputBinding:
    prefix: --rg-cn
- id: in_rg_fo
  doc: 'RG header: Flow order [none]'
  type: string
  inputBinding:
    prefix: --rg-fo
- id: in_rg_ks
  doc: 'RG header: Key sequence [none]'
  type: string
  inputBinding:
    prefix: --rg-ks
- id: in__threads_intnumber
  doc: ",  --threads <int>\nNumber of threads [1]"
  type: long
  inputBinding:
    prefix: -t
- id: in_pacbio_ont_presets
  doc: "<pacbio, ont>,  --presets <pacbio, ont>\nParameter presets for different sequencing\
    \ technologies [pacbio]"
  type: boolean
  inputBinding:
    prefix: -x
- id: in__minidentity_alignments
  doc: ",  --min-identity <0-1>\nAlignments with an identity lower than this threshold\
    \ will be discarded [0.65]"
  type: long
  inputBinding:
    prefix: -i
- id: in__minresidues_intfloatalignments
  doc: ",  --min-residues <int/float>\nAlignments containing less than <int> or (<float>\
    \ * read length) residues will be discarded [0.25]"
  type: double
  inputBinding:
    prefix: -R
- id: in_no_small_inv
  doc: Don't detect small inversions [false]
  type: boolean
  inputBinding:
    prefix: --no-smallinv
- id: in_no_low_quality_split
  doc: Split alignments with poor quality [false]
  type: boolean
  inputBinding:
    prefix: --no-lowqualitysplit
- id: in_verbose
  doc: Debug output [false]
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_no_progress
  doc: Don't print progress info while mapping [false]
  type: boolean
  inputBinding:
    prefix: --no-progress
- id: in_match
  doc: Match score [2]
  type: double
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: Mismatch score [-5]
  type: double
  inputBinding:
    prefix: --mismatch
- id: in_gap_open
  doc: Gap open score [-5]
  type: double
  inputBinding:
    prefix: --gap-open
- id: in_gap_extend_max
  doc: Gap open extend max [-5]
  type: double
  inputBinding:
    prefix: --gap-extend-max
- id: in_gap_extend_min
  doc: Gap open extend min [-1]
  type: double
  inputBinding:
    prefix: --gap-extend-min
- id: in_gap_decay
  doc: Gap extend decay [0.15]
  type: double
  inputBinding:
    prefix: --gap-decay
- id: in__kmerlength_kmer
  doc: ",  --kmer-length <10-15>\nK-mer length in bases [13]"
  type: long
  inputBinding:
    prefix: -k
- id: in_km_er_skip
  doc: Number of k-mers to skip when building the lookup table from the reference
    [2]
  type: long
  inputBinding:
    prefix: --kmer-skip
- id: in_bin_size
  doc: Sets the size of the grid used during candidate search [4]
  type: long
  inputBinding:
    prefix: --bin-size
- id: in_max_segments
  doc: Max number of segments allowed for a read per kb [1]
  type: long
  inputBinding:
    prefix: --max-segments
- id: in_sub_read_length
  doc: Length of fragments reads are split into [256]
  type: long
  inputBinding:
    prefix: --subread-length
- id: in_sub_read_corridor
  doc: "Length of corridor sub-reads are aligned with [40]\n"
  type: long
  inputBinding:
    prefix: --subread-corridor
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ngmlr
