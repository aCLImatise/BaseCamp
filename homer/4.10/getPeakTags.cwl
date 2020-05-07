class: CommandLineTool
id: getPeakTags.cwl
inputs:
- id: start
  doc: '<#> (position to start counting tags relative to peak center, default: -1000)'
  type: boolean
  inputBinding:
    prefix: -start
- id: end
  doc: '<#> (position to stop counting tags relative to peak center, default: 1000)'
  type: boolean
  inputBinding:
    prefix: -end
- id: offset
  doc: '<#> (relative position of start to peak center, default: midpoint)'
  type: boolean
  inputBinding:
    prefix: -offset
- id: fixed
  doc: (Count tags relative to actual peak start and stop - parameters -start and
    -end will extend from start and end of peaks, not reference position)
  type: boolean
  inputBinding:
    prefix: -fixed
- id: count
  doc: "(DEFAULT, Will output total/ratio tag counts to stdout) -strand <both|+|->\
    \ (Strand [relative to peak] to count tags from, default:both) -tagAdjust <#>\
    \ (bp to shift tag positions to estimate fragment centers, default: 0) '-tagAdjust\
    \ auto' uses half of the estimated tag fragment length -tbp <#> (Maximum tags\
    \ per bp to count, 0 = no limit, default: 0) -ratio (report tags per bp) -nfr\
    \ (Return nucleosome free region score over the peak center) -nfrSize <#> (nucleosome\
    \ free region size, default 100)"
  type: boolean
  inputBinding:
    prefix: -count
- id: peak_tags
  doc: '(output locations of tags relative to peak reference position to stdout) Columns:
    1:peakname,2:tags separated by ","'
  type: boolean
  inputBinding:
    prefix: -peaktags
- id: tags
  doc: '(output genomic locations of tags i.e. tags.tsv file to stdout) Columns: 1:none,2:chr,3:position,4:strand,5:value,6:length/-1'
  type: boolean
  inputBinding:
    prefix: -tags
- id: tag_autocorrelation
  doc: '<#> (output autocorrelation between read in locus, #=max distance)'
  type: boolean
  inputBinding:
    prefix: -tagAutocorrelation
- id: center
  doc: '(Center peaks on summit of peak) -nfr (Center on nucleosome free region instead
    of maximum tag pile-up) -nfrSize <#> (nucleosome free region size, default 100)
    -fragLength <#> (sequencing fragment length estimate, default: auto)'
  type: boolean
  inputBinding:
    prefix: -center
- id: or
  doc: getPeakTags <peak file> -bedGraph <bedGraph file> [options]
  type: boolean
  inputBinding:
    prefix: -or-
- id: count
  doc: (DEFAULT, Will output total edit distance from reference)
  type: boolean
  inputBinding:
    prefix: -count
- id: peak_snps
  doc: (will individual SNPs and genotypes associated with each peak)
  type: boolean
  inputBinding:
    prefix: -peaksnps
outputs: []
cwlVersion: v1.1
baseCommand:
- getPeakTags
