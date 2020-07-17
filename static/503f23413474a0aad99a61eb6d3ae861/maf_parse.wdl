version 1.0

task MafParse {
  input {
    Boolean? pretty
    String? start
    String? end
    String? seqs
    Boolean? exclude
    String? order
    Boolean? no_refseq
    Int? split
    String? out_root
    String? out_root_digits
    String? by_group
    String? mask_bases
    File? masked_file
    String? mask_features
    Boolean? strip_i_lines
    Boolean? strip_e_lines
    String in_file
  }
  command <<<
    maf_parse \
      ~{in_file} \
      ~{true="--pretty" false="" pretty} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{true="--exclude" false="" exclude} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{true="--no-refseq" false="" no_refseq} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(out_root) then ("--out-root " +  '"' + out_root + '"') else ""} \
      ~{if defined(out_root_digits) then ("--out-root-digits " +  '"' + out_root_digits + '"') else ""} \
      ~{if defined(by_group) then ("--by-group " +  '"' + by_group + '"') else ""} \
      ~{if defined(mask_bases) then ("--mask-bases " +  '"' + mask_bases + '"') else ""} \
      ~{if defined(masked_file) then ("--masked-file " +  '"' + masked_file + '"') else ""} \
      ~{if defined(mask_features) then ("--mask-features " +  '"' + mask_features + '"') else ""} \
      ~{true="--strip-i-lines" false="" strip_i_lines} \
      ~{true="--strip-e-lines" false="" strip_e_lines}
  >>>
  parameter_meta {
    pretty: "Pretty-print alignment (use '.' when character matches corresponding character in first sequence).  Ignored if --out-format SS is selected."
    start: "Start index of sub-alignment (indexing starts with 1). Coordinates are in terms of the reference sequence unless the --no-refseq option is used, in which case they are in terms of alignment columns.  Default is 1."
    end: "End index of sub-alignment.  Default is length of alignment. Coordinates defined as in --start option, above."
    seqs: "Comma-separated list of sequences to include (default) exclude (if --exclude).  Indicate by sequence number or name (numbering starts with 1 and is evaluated *after* --order is applied)."
    exclude: "Exclude rather than include specified sequences."
    order: "Change order of rows in alignment to match sequence names specified in name_list.  The first name in the alignment becomes the reference sequence."
    no_refseq: "Do not assume first sequence in MAF is refseq.  Instead, use coordinates  given by absolute position in alignment (starting from 1)."
    split: "Split MAF into pieces by length, and puts output in  outRootX.maf, where X=1,2,...,numPieces.  outRoot can be modified with --out-root, and the minimum number of digits in X can be modified with --out-root-digits. Splits between blocks, so that each output file does not exceed specified length.  By default, length is counted by distance spanned in alignment by refseq, unless --no-refseq is specified."
    out_root: "Filename root for output files produced by --split (default \"maf_parse\")."
    out_root_digits: "(for use with --split).  The minimum number of digits used to  index each output file produced by split."
    by_group: "(Requires --features).  Split by groups in annotation file, as  defined by specified tag."
    mask_bases: "Mask all bases with quality score <= n.  Note that n is in the same units as displayed in the MAF (ranging from 0-9), and represents min(9, floor(PHRED_score/5)).  Bases without any quality score will not be masked."
    masked_file: "(For use with --mask-bases).  Write a file containing all the regions masked for low quality.  The file will be in 0-based coordinates relative to the refseq, with an additional column giving the name of the species masked.  Note that low-quality bases masked at alignment columns with a gap in the reference sequence may not be represented in the output file."
    mask_features: "(Requires --features).  Mask all bases annotated in features in the given species (can be a comma-delimited list of species).  Note that coordinates are always in terms of refseq, even if a different species is being masked."
    strip_i_lines: "Remove lines in MAF starting with i."
    strip_e_lines: "Remove lines in MAF starting with e."
    in_file: ""
  }
}