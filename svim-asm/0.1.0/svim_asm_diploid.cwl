class: CommandLineTool
id: svim_asm_diploid.cwl
inputs:
- id: working_dir
  doc: Working and output directory. Existing files in the directory are overwritten.
    If the directory does not exist, it is created.
  type: string
  inputBinding:
    position: 0
- id: bam_file_1
  doc: SAM/BAM file with alignment of query assembly's first haplotype to reference
    assembly (needs to be coordinate-sorted)
  type: string
  inputBinding:
    position: 1
- id: bam_file_2
  doc: SAM/BAM file with alignment of query assembly's second haplotype to reference
    assembly (needs to be coordinate-sorted)
  type: string
  inputBinding:
    position: 2
- id: genome
  doc: Reference genome file that the assembly was aligned to (FASTA)
  type: string
  inputBinding:
    position: 3
- id: min_mapq
  doc: 'Minimum mapping quality of alignments to consider (default: 20). Alignments
    with a lower mapping quality are ignored.'
  type: long
  inputBinding:
    prefix: --min_mapq
- id: min_sv_size
  doc: 'Minimum SV size to detect (default: 40). SVIM can potentially detect events
    of any size but is limited by the signal-to-noise ratio in the input alignments.
    That means that more accurate assemblies and alignments enable the detection of
    smaller events.'
  type: long
  inputBinding:
    prefix: --min_sv_size
- id: max_sv_size
  doc: 'Maximum SV size to detect (default: 100000). This parameter is used to distinguish
    long deletions (and inversions) from translocations which cannot be distinguished
    from the alignment alone. Split read segments mapping far apart on the reference
    could either indicate a very long deletion (inversion) or a translocation breakpoint.
    SVIM calls a translocation breakpoint if the mapping distance is larger than this
    parameter and a deletion (or inversion) if it is smaller or equal.'
  type: long
  inputBinding:
    prefix: --max_sv_size
- id: query_gap_tolerance
  doc: 'Maximum tolerated gap between adjacent alignment segments on the query (default:
    50). Example: Deletions are detected from two subsequent segments of a split query
    sequence that are mapped far apart from each other on the reference. The query
    gap tolerance determines the maximum tolerated length of the query gap between
    both segments. If there is an unaligned query segment larger than this value between
    the two segments, no deletion is called.'
  type: string
  inputBinding:
    prefix: --query_gap_tolerance
- id: query_overlap_tolerance
  doc: 'Maximum tolerated overlap between adjacent alignment segments on the query
    (default: 50). Example: Deletions are detected from two subsequent segments of
    a split query sequence that are mapped far apart from each other on the reference.
    The query overlap tolerance determines the maximum tolerated length of an overlap
    between both segments in the query. If the overlap between the two segments in
    the query is larger than this value, no deletion is called.'
  type: string
  inputBinding:
    prefix: --query_overlap_tolerance
- id: reference_gap_tolerance
  doc: 'Maximum tolerated gap between adjacent alignment segments on the reference
    (default: 50). Example: Insertions are detected from two segments of a split query
    sequence that are mapped right next to each other on the reference but with unaligned
    sequence between them on the query. The reference gap tolerance determines the
    maximum tolerated length of the reference gap between both segments. If there
    is a reference gap larger than this value between the two segments, no insertion
    is called.'
  type: string
  inputBinding:
    prefix: --reference_gap_tolerance
- id: reference_overlap_tolerance
  doc: 'Maximum tolerated overlap between adjacent alignment segments on the reference
    (default: 50). Example: Insertions are detected from two segments of a split query
    sequence that are mapped right next to each other on the reference but with unaligned
    sequence between them on the query. The reference overlap tolerance determines
    the maximum tolerated length of an overlap between both segments on the reference.
    If there is a reference gap larger than this value between the two segments, no
    insertion is called.'
  type: string
  inputBinding:
    prefix: --reference_overlap_tolerance
- id: max_edit_distance
  doc: 'Maximum edit distance between both alleles to be paired up into a homozygous
    call (default: 200).'
  type: long
  inputBinding:
    prefix: --max_edit_distance
- id: sample
  doc: 'Sample ID to include in output vcf file (default: Sample)'
  type: string
  inputBinding:
    prefix: --sample
- id: types
  doc: 'SV types to include in output VCF (default: DEL,INS,INV,DUP_TAN,DUP_INT,BND).
    Give a comma- separated list of SV types. The possible SV types are: DEL (deletions),
    INS (novel insertions), INV (inversions), DUP_TAN (tandem duplications), DUP_INT
    (interspersed duplications), BND (breakends).'
  type: string
  inputBinding:
    prefix: --types
- id: symbolic_alleles
  doc: 'Use symbolic alleles, such as <DEL> or <INV> in the VCF output (default: False).
    By default, deletions, insertions, and inversions are represented by their nucleotide
    sequence in the output VCF.'
  type: boolean
  inputBinding:
    prefix: --symbolic_alleles
- id: duplications_as_insertions
  doc: 'Represent tandem and interspersed duplications as insertions in output VCF
    (default: False). By default, duplications are represented by the SVTYPE=DUP and
    the genomic source is given by the POS and END tags. When enabling this option,
    duplications are instead represented by the SVTYPE=INS and POS and END both give
    the insertion point of the duplication.'
  type: boolean
  inputBinding:
    prefix: --duplications_as_insertions
- id: query_names
  doc: 'Output names of supporting query sequences in INFO tag of VCF (default: False).
    If enabled, the INFO/READS tag contains the list of names of the supporting query
    sequences.'
  type: boolean
  inputBinding:
    prefix: --query_names
outputs: []
cwlVersion: v1.1
baseCommand:
- svim-asm
- diploid
