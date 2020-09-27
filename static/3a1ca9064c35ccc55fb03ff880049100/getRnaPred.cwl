class: CommandLineTool
id: getRnaPred.cwl
inputs:
- id: in_weird
  doc: '- only get ones with weird splice sites'
  type: boolean
  inputBinding:
    prefix: -weird
- id: in_cds_upper
  doc: '- output CDS in upper case'
  type: boolean
  inputBinding:
    prefix: -cdsUpper
- id: in_cds_only
  doc: '- only output CDS'
  type: boolean
  inputBinding:
    prefix: -cdsOnly
- id: in_cds_out
  doc: '- write CDS to this tab-separated file, in the form'
  type: File
  inputBinding:
    prefix: -cdsOut
- id: in_keep_masking
  doc: '- un/masked in upper/lower case.'
  type: boolean
  inputBinding:
    prefix: -keepMasking
- id: in_psl_out
  doc: "- output a PSLs for the virtual mRNAs.  Allows virtual\nmRNA to be analyzed\
    \ by tools that work on PSLs"
  type: string
  inputBinding:
    prefix: -pslOut
- id: in_suffix
  doc: "- append suffix to each id to avoid confusion with mRNAs\nuse to define the\
    \ genes."
  type: string
  inputBinding:
    prefix: -suffix
- id: in_peptides
  doc: "- out the translation of the CDS to a peptide sequence.\nThe newer program\
    \ genePredToProt maybe produce better results in cases\nwere there are frame-shifting\
    \ indels in the CDS."
  type: boolean
  inputBinding:
    prefix: -peptides
- id: in_exon_indices
  doc: "- output indices of exon boundaries after sequence name,\ne.g., \"103 243\
    \ 290\" says positions 1-103 are from the first exon,\npositions 104-243 are from\
    \ the second exon, etc."
  type: boolean
  inputBinding:
    prefix: -exonIndices
- id: in_maxsize
  doc: "- output a maximum of size characters.  Useful when\ntesting gene predictions\
    \ by RT-PCR."
  type: long
  inputBinding:
    prefix: -maxSize
- id: in_genome_seqs
  doc: "- get genome sequences from the specified nib directory\nor 2bit file instead\
    \ of going though the path found in chromInfo."
  type: File
  inputBinding:
    prefix: -genomeSeqs
- id: in_include_coords
  doc: "- include the genomic coordinates as a comment in the\nfasta header.  This\
    \ is necessary when there are multiple genePreds\nwith the same name."
  type: boolean
  inputBinding:
    prefix: -includeCoords
- id: in_gene_pred_ext
  doc: "- (for use with -peptides) use extended genePred format,\nand consider frame\
    \ information when translating (Warning: only\nconsiders offset at 5' end, not\
    \ frameshifts between blocks)\n"
  type: boolean
  inputBinding:
    prefix: -genePredExt
- id: in_acc
  doc: start  end
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getRnaPred
