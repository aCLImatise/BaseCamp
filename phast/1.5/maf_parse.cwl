class: CommandLineTool
id: maf_parse.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pretty
  doc: Pretty-print alignment (use '.' when character matches corresponding character
    in first sequence).  Ignored if --out-format SS is selected.
  type: boolean
  inputBinding:
    prefix: --pretty
- id: start
  doc: Start index of sub-alignment (indexing starts with 1). Coordinates are in terms
    of the reference sequence unless the --no-refseq option is used, in which case
    they are in terms of alignment columns.  Default is 1.
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: End index of sub-alignment.  Default is length of alignment. Coordinates defined
    as in --start option, above.
  type: string
  inputBinding:
    prefix: --end
- id: seqs
  doc: Comma-separated list of sequences to include (default) exclude (if --exclude).  Indicate
    by sequence number or name (numbering starts with 1 and is evaluated *after* --order
    is applied).
  type: string
  inputBinding:
    prefix: --seqs
- id: exclude
  doc: Exclude rather than include specified sequences.
  type: boolean
  inputBinding:
    prefix: --exclude
- id: order
  doc: Change order of rows in alignment to match sequence names specified in name_list.  The
    first name in the alignment becomes the reference sequence.
  type: string
  inputBinding:
    prefix: --order
- id: no_refseq
  doc: Do not assume first sequence in MAF is refseq.  Instead, use coordinates  given
    by absolute position in alignment (starting from 1).
  type: boolean
  inputBinding:
    prefix: --no-refseq
- id: split
  doc: Split MAF into pieces by length, and puts output in  outRootX.maf, where X=1,2,...,numPieces.  outRoot
    can be modified with --out-root, and the minimum number of digits in X can be
    modified with --out-root-digits. Splits between blocks, so that each output file
    does not exceed specified length.  By default, length is counted by distance spanned
    in alignment by refseq, unless --no-refseq is specified.
  type: long
  inputBinding:
    prefix: --split
- id: out_root
  doc: Filename root for output files produced by --split (default "maf_parse").
  type: string
  inputBinding:
    prefix: --out-root
- id: out_root_digits
  doc: (for use with --split).  The minimum number of digits used to  index each output
    file produced by split.
  type: string
  inputBinding:
    prefix: --out-root-digits
- id: by_group
  doc: (Requires --features).  Split by groups in annotation file, as  defined by
    specified tag.
  type: string
  inputBinding:
    prefix: --by-group
- id: mask_bases
  doc: Mask all bases with quality score <= n.  Note that n is in the same units as
    displayed in the MAF (ranging from 0-9), and represents min(9, floor(PHRED_score/5)).  Bases
    without any quality score will not be masked.
  type: string
  inputBinding:
    prefix: --mask-bases
- id: masked_file
  doc: (For use with --mask-bases).  Write a file containing all the regions masked
    for low quality.  The file will be in 0-based coordinates relative to the refseq,
    with an additional column giving the name of the species masked.  Note that low-quality
    bases masked at alignment columns with a gap in the reference sequence may not
    be represented in the output file.
  type: File
  inputBinding:
    prefix: --masked-file
- id: mask_features
  doc: (Requires --features).  Mask all bases annotated in features in the given species
    (can be a comma-delimited list of species).  Note that coordinates are always
    in terms of refseq, even if a different species is being masked.
  type: string
  inputBinding:
    prefix: --mask-features
- id: strip_i_lines
  doc: Remove lines in MAF starting with i.
  type: boolean
  inputBinding:
    prefix: --strip-i-lines
- id: strip_e_lines
  doc: Remove lines in MAF starting with e.
  type: boolean
  inputBinding:
    prefix: --strip-e-lines
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_parse
