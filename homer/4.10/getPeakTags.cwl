#!/usr/bin/env cwl-runner

baseCommand:
- getPeakTags
class: CommandLineTool
cwlVersion: v1.0
id: getpeaktags
inputs:
- doc: '<#> (position to start counting tags relative to peak center, default: -1000)'
  id: start
  inputBinding:
    prefix: -start
  type: boolean
- doc: '<#> (position to stop counting tags relative to peak center, default: 1000)'
  id: end
  inputBinding:
    prefix: -end
  type: boolean
- doc: '<#> (relative position of start to peak center, default: midpoint)'
  id: offset
  inputBinding:
    prefix: -offset
  type: boolean
- doc: (Count tags relative to actual peak start and stop - parameters -start and
    -end will extend from start and end of peaks, not reference position)
  id: fixed
  inputBinding:
    prefix: -fixed
  type: boolean
- doc: "(DEFAULT, Will output total/ratio tag counts to stdout) -strand <both|+|->\
    \ (Strand [relative to peak] to count tags from, default:both) -tagAdjust <#>\
    \ (bp to shift tag positions to estimate fragment centers, default: 0) '-tagAdjust\
    \ auto' uses half of the estimated tag fragment length -tbp <#> (Maximum tags\
    \ per bp to count, 0 = no limit, default: 0) -ratio (report tags per bp) -nfr\
    \ (Return nucleosome free region score over the peak center) -nfrSize <#> (nucleosome\
    \ free region size, default 100)"
  id: count
  inputBinding:
    prefix: -count
  type: boolean
- doc: '(output locations of tags relative to peak reference position to stdout) Columns:
    1:peakname,2:tags separated by ","'
  id: peak_tags
  inputBinding:
    prefix: -peaktags
  type: boolean
- doc: '(output genomic locations of tags i.e. tags.tsv file to stdout) Columns: 1:none,2:chr,3:position,4:strand,5:value,6:length/-1'
  id: tags
  inputBinding:
    prefix: -tags
  type: boolean
- doc: '<#> (output autocorrelation between read in locus, #=max distance)'
  id: tag_autocorrelation
  inputBinding:
    prefix: -tagAutocorrelation
  type: boolean
- doc: '(Center peaks on summit of peak) -nfr (Center on nucleosome free region instead
    of maximum tag pile-up) -nfrSize <#> (nucleosome free region size, default 100)
    -fragLength <#> (sequencing fragment length estimate, default: auto)'
  id: center
  inputBinding:
    prefix: -center
  type: boolean
- doc: getPeakTags <peak file> -bedGraph <bedGraph file> [options]
  id: or
  inputBinding:
    prefix: -or-
  type: boolean
- doc: (DEFAULT, Will output total edit distance from reference)
  id: count
  inputBinding:
    prefix: -count
  type: boolean
- doc: (will individual SNPs and genotypes associated with each peak)
  id: peak_snps
  inputBinding:
    prefix: -peaksnps
  type: boolean
