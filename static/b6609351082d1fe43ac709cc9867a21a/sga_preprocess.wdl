version 1.0

task SgaPreprocess {
  input {
    Boolean? verbose
    Boolean? seed
    File? out
    Int? pe_mode
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
    String? remove_adapter_rev
    String? option
    String prepare
    String reads_one
  }
  command <<<
    sga preprocess \
      ~{option} \
      ~{prepare} \
      ~{reads_one} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--seed" false="" seed} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(pe_mode) then ("--pe-mode " +  '"' + pe_mode + '"') else ""} \
      ~{if defined(pe_orphans) then ("--pe-orphans " +  '"' + pe_orphans + '"') else ""} \
      ~{true="--phred64" false="" phred_six_four} \
      ~{true="--discard-quality" false="" discard_quality} \
      ~{if defined(quality_trim) then ("--quality-trim " +  '"' + quality_trim + '"') else ""} \
      ~{if defined(quality_filter) then ("--quality-filter " +  '"' + quality_filter + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(hard_clip) then ("--hard-clip " +  '"' + hard_clip + '"') else ""} \
      ~{true="--permute-ambiguous" false="" permute_ambiguous} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{true="--dust" false="" dust} \
      ~{if defined(dust_threshold) then ("--dust-threshold " +  '"' + dust_threshold + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(remove_adapter_rev) then ("--remove-adapter-rev " +  '"' + remove_adapter_rev + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    seed: "set random seed"
    out: "write the reads to FILE (default: stdout)"
    pe_mode: "0 - do not treat reads as paired (default) 1 - reads are paired with the first read in READS1 and the second read in READS2. The paired reads will be interleaved in the output file 2 - reads are paired and the records are interleaved within a single file."
    pe_orphans: "if one half of a read pair fails filtering, write the passed half to FILE"
    phred_six_four: "convert quality values from phred-64 to phred-33."
    discard_quality: "do not output quality scores"
    quality_trim: "perform Heng Li's BWA quality trim algorithm.  Reads are trimmed according to the formula: argmax_x{\sum_{i=x+1}^l(INT-q_i)} if q_l<INT where l is the original read length."
    quality_filter: "discard the read if it contains more than INT low-quality bases. Bases with phred score <= 3 are considered low quality. Default: no filtering. The filtering is applied after trimming so bases removed are not counted. Do not use this option if you are planning to use the BCR algorithm for indexing."
    min_length: "discard sequences that are shorter than INT this is most useful when used in conjunction with --quality-trim. Default: 40"
    hard_clip: "clip all reads to be length INT. In most cases it is better to use the soft clip (quality-trim) option."
    permute_ambiguous: "Randomly change ambiguous base calls to one of possible bases. If this option is not specified, the entire read will be discarded."
    sample: "Randomly sample reads or pairs with acceptance probability FLOAT."
    dust: "Perform dust-style filtering of low complexity reads."
    dust_threshold: "filter out reads that have a dust score higher than FLOAT (default: 4.0)."
    suffix: "append SUFFIX to each read ID"
    remove_adapter_rev: "Remove the adapter STRING from input reads."
    option: ""
    prepare: ""
    reads_one: ""
  }
}