class: CommandLineTool
id: vardict.pl.cwl
inputs:
- id: b
  doc: 'The minimum # of reads to determine strand bias, default 2'
  type: long
  inputBinding:
    prefix: -B
- id: q
  doc: If set, reads with mapping quality less than INT will be filtered and ignored
  type: long
  inputBinding:
    prefix: -Q
- id: q
  doc: 'The phred score for a base to be considered a good call.  Default: 22.5 (for
    Illumina) For PGM, set it to ~15, as PGM tends to under estimate base quality.'
  type: long
  inputBinding:
    prefix: -q
- id: m
  doc: 'If set, reads with mismatches more than INT will be filtered and ignored.  Gaps
    are not counted as mismatches.   Valid only for bowtie2/TopHat or BWA aln followed
    by sampe.  BWA mem is calculated as NM - Indels.  Default: 8, or reads with more
    than 8 mismatches will not be used.'
  type: long
  inputBinding:
    prefix: -m
- id: trim
  doc: Trim bases after [INT] bases in the reads
  type: long
  inputBinding:
    prefix: --trim
- id: x
  doc: Extension of bp to look for mismatches after insersion or deletion.  Default
    to 3 bp, or only calls when they are within 3 bp.
  type: long
  inputBinding:
    prefix: -X
- id: ref_extension
  doc: Extension of bp of reference to build lookup table.  Default to 1200 bp.  Increase
    the number will slowdown the program. The main purpose is to call large indels
    within 1000 bp that can be missed by discordant mate pairs.
  type: long
  inputBinding:
    prefix: --ref-extension
- id: p
  doc: 'The read position filter.  If the mean variants position is less that specified,
    it is considered false positive.  Default: 5'
  type: string
  inputBinding:
    prefix: -P
- id: down_sample
  doc: 'For downsampling fraction.  e.g. 0.7 means roughly 70% downsampling.  Default:
    No downsampling.  Use with caution.  The downsampling will be random and non-reproducible.'
  type: string
  inputBinding:
    prefix: --downsample
- id: o
  doc: 'The Qratio of (good_quality_reads)/(bad_quality_reads+0.5).  The quality is
    defined by -q option.  Default: 1.5'
  type: string
  inputBinding:
    prefix: -o
- id: o
  doc: 'The reads should have at least mean MapQ to be considered a valid variant.  Default:
    no filtering'
  type: string
  inputBinding:
    prefix: -O
- id: v
  doc: The lowest frequency in normal sample allowed for a putative somatic mutations.  Default
    to 0.05
  type: string
  inputBinding:
    prefix: -V
- id: i
  doc: 'The indel size.  Default: 50bp'
  type: long
  inputBinding:
    prefix: -I
- id: m
  doc: 'The minimum matches for a read to be considered.  If, after soft-clipping,
    the matched bp is less than INT, then the  read is discarded.  It is meant for
    PCR based targeted sequencing where there is no insert and the matching is only
    the primers. Default: 25, or reads with matches less than 25bp will be filtered'
  type: long
  inputBinding:
    prefix: -M
- id: l
  doc: 'The minimum structural variant length to be presented using <DEL> <DUP> <INV>
    <INS>, etc.  Default: 500.  Any indel, complex variants less than this will be
    spelled out with exact nucleotides'
  type: long
  inputBinding:
    prefix: -L
- id: insert_size
  doc: 'The insert size.  Used for SV calling.  Default: 300'
  type: string
  inputBinding:
    prefix: --insert-size
- id: insert_std
  doc: 'The insert size STD.  Used for SV calling.  Default: 100'
  type: string
  inputBinding:
    prefix: --insert-std
- id: a
  doc: 'The number of STD.  A pair will be considered for DEL if INSERT > INSERT_SIZE
    + INSERT_STD_AMT * INSERT_STD.  Default: 4'
  type: string
  inputBinding:
    prefix: -A
- id: crisp_r
  doc: The genomic position that CRISPR/Cas9 suppose to cut, typically 3bp from the
    PAM NGG site and within the guide.  For CRISPR mode only.  It will adjust the
    variants (mostly In-Del) start and end sites to as close to this location as possible,
    if there are alternatives. The option should only be used for CRISPR mode.
  type: string
  inputBinding:
    prefix: --crispr
- id: j
  doc: 'In CRISPR mode, the minimum amount in bp that a read needs to overlap with
    cutting site.  If a read does not meet the criteria, it will not be used for variant
    calling, since it is likely just a partially amplified PCR.  Default: not set,
    or no filtering '
  type: string
  inputBinding:
    prefix: -j
- id: adaptor
  doc: Filter adaptor sequences so that they are not used in realignment.  Multiple
    adaptors can be supplied by multiple of this option.
  type: string
  inputBinding:
    prefix: --adaptor
- id: chimeric
  doc: Indicate to turn off chimeric reads filtering.  Chimeric reads are artifacts
    from library construction, where a read can be split into two segments, each will
    be aligned within 1-2 read length distance, but in opposite direction.
  type: boolean
  inputBinding:
    prefix: --chimeric
outputs: []
cwlVersion: v1.1
baseCommand:
- vardict.pl
