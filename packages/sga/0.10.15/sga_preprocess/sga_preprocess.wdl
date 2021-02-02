version 1.0

task SgaPreprocess {
  input {
    Boolean? verbose
    Boolean? seed
    File? out
    File? pe_mode
    File? pe_orphans
    Boolean? phred_six_four
    Boolean? discard_quality
    Int? quality_trim
    Int? quality_filter
    Int? min_length
    Int? hard_clip
    Boolean? permute_ambiguous
    Float? sample
    Boolean? dust
    Float? dust_threshold
    String? suffix
    Boolean? no_primer_check
    String prepare
    Int reads_one
  }
  command <<<
    sga preprocess \
      ~{prepare} \
      ~{reads_one} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(pe_mode) then ("--pe-mode " +  '"' + pe_mode + '"') else ""} \
      ~{if defined(pe_orphans) then ("--pe-orphans " +  '"' + pe_orphans + '"') else ""} \
      ~{if (phred_six_four) then "--phred64" else ""} \
      ~{if (discard_quality) then "--discard-quality" else ""} \
      ~{if defined(quality_trim) then ("--quality-trim " +  '"' + quality_trim + '"') else ""} \
      ~{if defined(quality_filter) then ("--quality-filter " +  '"' + quality_filter + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(hard_clip) then ("--hard-clip " +  '"' + hard_clip + '"') else ""} \
      ~{if (permute_ambiguous) then "--permute-ambiguous" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (dust) then "--dust" else ""} \
      ~{if defined(dust_threshold) then ("--dust-threshold " +  '"' + dust_threshold + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if (no_primer_check) then "--no-primer-check" else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    seed: "set random seed"
    out: "write the reads to FILE (default: stdout)"
    pe_mode: "0 - do not treat reads as paired (default)\\n1 - reads are paired with the first read in READS1 and the second\\nread in READS2. The paired reads will be interleaved in the output file\\n2 - reads are paired and the records are interleaved within a single file."
    pe_orphans: "if one half of a read pair fails filtering, write the passed half to FILE"
    phred_six_four: "convert quality values from phred-64 to phred-33."
    discard_quality: "do not output quality scores"
    quality_trim: "perform Heng Li's BWA quality trim algorithm.\\nReads are trimmed according to the formula:\\nargmax_x{\\sum_{i=x+1}^l(INT-q_i)} if q_l<INT\\nwhere l is the original read length."
    quality_filter: "discard the read if it contains more than INT low-quality bases.\\nBases with phred score <= 3 are considered low quality. Default: no filtering.\\nThe filtering is applied after trimming so bases removed are not counted.\\nDo not use this option if you are planning to use the BCR algorithm for indexing."
    min_length: "discard sequences that are shorter than INT\\nthis is most useful when used in conjunction with --quality-trim. Default: 40"
    hard_clip: "clip all reads to be length INT. In most cases it is better to use\\nthe soft clip (quality-trim) option."
    permute_ambiguous: "Randomly change ambiguous base calls to one of possible bases.\\nIf this option is not specified, the entire read will be discarded."
    sample: "Randomly sample reads or pairs with acceptance probability FLOAT."
    dust: "Perform dust-style filtering of low complexity reads."
    dust_threshold: "filter out reads that have a dust score higher than FLOAT (default: 4.0)."
    suffix: "append SUFFIX to each read ID"
    no_primer_check: "disable the default check for primer sequences\\n-r, --remove-adapter-fwd=STRING\\n-c, --remove-adapter-rev=STRING  Remove the adapter STRING from input reads."
    prepare: ""
    reads_one: ""
  }
  output {
    File out_stdout = stdout()
    File out_pe_mode = "${in_pe_mode}"
  }
}