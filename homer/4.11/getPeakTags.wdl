version 1.0

task GetPeakTags {
  input {
    Boolean? start
    Boolean? end
    Boolean? offset
    Boolean? fixed
    Boolean? count
    Boolean? peak_tags
    Boolean? tags
    Boolean? tag_autocorrelation
    Boolean? center
    Boolean? or
    Boolean? peak_snps
    String peak_file
    String tag_directory
  }
  command <<<
    getPeakTags \
      ~{peak_file} \
      ~{tag_directory} \
      ~{true="-start" false="" start} \
      ~{true="-end" false="" end} \
      ~{true="-offset" false="" offset} \
      ~{true="-fixed" false="" fixed} \
      ~{true="-count" false="" count} \
      ~{true="-peaktags" false="" peak_tags} \
      ~{true="-tags" false="" tags} \
      ~{true="-tagAutocorrelation" false="" tag_autocorrelation} \
      ~{true="-center" false="" center} \
      ~{true="-or-" false="" or} \
      ~{true="-peaksnps" false="" peak_snps}
  >>>
  parameter_meta {
    start: "<#> (position to start counting tags relative to peak center, default: -1000)"
    end: "<#> (position to stop counting tags relative to peak center, default: 1000)"
    offset: "<#> (relative position of start to peak center, default: midpoint)"
    fixed: "(Count tags relative to actual peak start and stop - parameters -start and -end will extend from start and end of peaks, not reference position)"
    count: "(DEFAULT, Will output total/ratio tag counts to stdout) -strand <both|+|-> (Strand [relative to peak] to count tags from, default:both) -tagAdjust <#> (bp to shift tag positions to estimate fragment centers, default: 0) '-tagAdjust auto' uses half of the estimated tag fragment length -tbp <#> (Maximum tags per bp to count, 0 = no limit, default: 0) -ratio (report tags per bp) -nfr (Return nucleosome free region score over the peak center) -nfrSize <#> (nucleosome free region size, default 100)"
    peak_tags: "(output locations of tags relative to peak reference position to stdout) Columns: 1:peakname,2:tags separated by \",\""
    tags: "(output genomic locations of tags i.e. tags.tsv file to stdout) Columns: 1:none,2:chr,3:position,4:strand,5:value,6:length/-1"
    tag_autocorrelation: "<#> (output autocorrelation between read in locus, #=max distance)"
    center: "(Center peaks on summit of peak) -nfr (Center on nucleosome free region instead of maximum tag pile-up) -nfrSize <#> (nucleosome free region size, default 100) -fragLength <#> (sequencing fragment length estimate, default: auto)"
    or: "getPeakTags <peak file> -bedGraph <bedGraph file> [options]"
    peak_snps: "(will individual SNPs and genotypes associated with each peak)"
    peak_file: ""
    tag_directory: ""
  }
}