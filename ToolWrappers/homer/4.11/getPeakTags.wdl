version 1.0

task GetPeakTags {
  input {
    Boolean? start
    Boolean? end
    Boolean? offset
    Boolean? fixed
    Boolean? count
    Boolean? strand
    Boolean? tag_adjust
    Boolean? tbp
    Boolean? ratio
    Boolean? nfr
    Boolean? nfr_size
    Boolean? peak_tags
    Boolean? tags
    Boolean? tag_autocorrelation
    Boolean? center
    Boolean? frag_length
    Boolean? or
    Int? individuals
    Boolean? all
    Boolean? peak_snps
    File? vcf
    File? wig
    File peak_file
    Directory tag_directory
  }
  command <<<
    getPeakTags \
      ~{peak_file} \
      ~{tag_directory} \
      ~{if (start) then "-start" else ""} \
      ~{if (end) then "-end" else ""} \
      ~{if (offset) then "-offset" else ""} \
      ~{if (fixed) then "-fixed" else ""} \
      ~{if (count) then "-count" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (tag_adjust) then "-tagAdjust" else ""} \
      ~{if (tbp) then "-tbp" else ""} \
      ~{if (ratio) then "-ratio" else ""} \
      ~{if (nfr) then "-nfr" else ""} \
      ~{if (nfr_size) then "-nfrSize" else ""} \
      ~{if (peak_tags) then "-peaktags" else ""} \
      ~{if (tags) then "-tags" else ""} \
      ~{if (tag_autocorrelation) then "-tagAutocorrelation" else ""} \
      ~{if (center) then "-center" else ""} \
      ~{if (frag_length) then "-fragLength" else ""} \
      ~{if (or) then "-or-" else ""} \
      ~{if defined(individuals) then ("-individuals " +  '"' + individuals + '"') else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (peak_snps) then "-peaksnps" else ""} \
      ~{if defined(vcf) then ("-vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(wig) then ("-wig " +  '"' + wig + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    start: "<#> (position to start counting tags relative to peak center, default: -1000)"
    end: "<#> (position to stop counting tags relative to peak center, default: 1000)"
    offset: "<#> (relative position of start to peak center, default: midpoint)"
    fixed: "(Count tags relative to actual peak start and stop - parameters -start and"
    count: "(DEFAULT, Will output total/ratio tag counts to stdout)"
    strand: "<both|+|-> (Strand [relative to peak] to count tags from, default:both)"
    tag_adjust: "<#> (bp to shift tag positions to estimate fragment centers, default: 0)\\n'-tagAdjust auto' uses half of the estimated tag fragment length"
    tbp: "<#> (Maximum tags per bp to count, 0 = no limit, default: 0)"
    ratio: "(report tags per bp)"
    nfr: "(Return nucleosome free region score over the peak center)"
    nfr_size: "<#> (nucleosome free region size, default 100)"
    peak_tags: "(output locations of tags relative to peak reference position to stdout)\\nColumns: 1:peakname,2:tags separated by \\\",\\\""
    tags: "(output genomic locations of tags i.e. tags.tsv file to stdout)\\nColumns: 1:none,2:chr,3:position,4:strand,5:value,6:length/-1"
    tag_autocorrelation: "<#> (output autocorrelation between read in locus, #=max distance)"
    center: "(Center peaks on summit of peak)"
    frag_length: "<#> (sequencing fragment length estimate, default: auto)"
    or: "getPeakTags <peak file> -bedGraph <bedGraph file> [options]"
    individuals: "[name 2] ... (only report genotypes for these column headers)"
    all: "(By default, only SNPs with non-reference alleles in at least on individual are\\nreported, \\\"-all\\\" will report all SNPs regardless of genotype)"
    peak_snps: "(will individual SNPs and genotypes associated with each peak)"
    vcf: ""
    wig: ""
    peak_file: ""
    tag_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}