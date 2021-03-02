class: CommandLineTool
id: getPeakTags.cwl
inputs:
- id: in_start
  doc: '<#> (position to start counting tags relative to peak center, default: -1000)'
  type: boolean?
  inputBinding:
    prefix: -start
- id: in_end
  doc: '<#> (position to stop counting tags relative to peak center, default: 1000)'
  type: boolean?
  inputBinding:
    prefix: -end
- id: in_offset
  doc: '<#> (relative position of start to peak center, default: midpoint)'
  type: boolean?
  inputBinding:
    prefix: -offset
- id: in_fixed
  doc: (Count tags relative to actual peak start and stop - parameters -start and
  type: boolean?
  inputBinding:
    prefix: -fixed
- id: in_count
  doc: (DEFAULT, Will output total/ratio tag counts to stdout)
  type: boolean?
  inputBinding:
    prefix: -count
- id: in_strand
  doc: <both|+|-> (Strand [relative to peak] to count tags from, default:both)
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_tag_adjust
  doc: "<#> (bp to shift tag positions to estimate fragment centers, default: 0)\n\
    '-tagAdjust auto' uses half of the estimated tag fragment length"
  type: boolean?
  inputBinding:
    prefix: -tagAdjust
- id: in_tbp
  doc: '<#> (Maximum tags per bp to count, 0 = no limit, default: 0)'
  type: boolean?
  inputBinding:
    prefix: -tbp
- id: in_ratio
  doc: (report tags per bp)
  type: boolean?
  inputBinding:
    prefix: -ratio
- id: in_nfr
  doc: (Return nucleosome free region score over the peak center)
  type: boolean?
  inputBinding:
    prefix: -nfr
- id: in_nfr_size
  doc: <#> (nucleosome free region size, default 100)
  type: boolean?
  inputBinding:
    prefix: -nfrSize
- id: in_peak_tags
  doc: "(output locations of tags relative to peak reference position to stdout)\n\
    Columns: 1:peakname,2:tags separated by \",\""
  type: boolean?
  inputBinding:
    prefix: -peaktags
- id: in_tags
  doc: "(output genomic locations of tags i.e. tags.tsv file to stdout)\nColumns:\
    \ 1:none,2:chr,3:position,4:strand,5:value,6:length/-1"
  type: boolean?
  inputBinding:
    prefix: -tags
- id: in_tag_autocorrelation
  doc: '<#> (output autocorrelation between read in locus, #=max distance)'
  type: boolean?
  inputBinding:
    prefix: -tagAutocorrelation
- id: in_center
  doc: (Center peaks on summit of peak)
  type: boolean?
  inputBinding:
    prefix: -center
- id: in_frag_length
  doc: '<#> (sequencing fragment length estimate, default: auto)'
  type: boolean?
  inputBinding:
    prefix: -fragLength
- id: in_or
  doc: getPeakTags <peak file> -bedGraph <bedGraph file> [options]
  type: boolean?
  inputBinding:
    prefix: -or-
- id: in_individuals
  doc: '[name 2] ... (only report genotypes for these column headers)'
  type: long?
  inputBinding:
    prefix: -individuals
- id: in_all
  doc: "(By default, only SNPs with non-reference alleles in at least on individual\
    \ are\nreported, \"-all\" will report all SNPs regardless of genotype)"
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_peak_snps
  doc: (will individual SNPs and genotypes associated with each peak)
  type: boolean?
  inputBinding:
    prefix: -peaksnps
- id: in_vcf
  doc: ''
  type: File?
  inputBinding:
    prefix: -vcf
- id: in_wig
  doc: ''
  type: File?
  inputBinding:
    prefix: -wig
- id: in_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_tag_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getPeakTags
