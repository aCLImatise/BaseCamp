version 1.0

task OverlayBigwig.py {
  input {
    String? bw_file_one
    String? bw_file_two
    String? action
    String? output_wig_file
    String? chunk
  }
  command <<<
    overlay_bigwig.py \
      ~{if defined(bw_file_one) then ("--bwfile1 " +  '"' + bw_file_one + '"') else ""} \
      ~{if defined(bw_file_two) then ("--bwfile2 " +  '"' + bw_file_two + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(output_wig_file) then ("--output " +  '"' + output_wig_file + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""}
  >>>
  parameter_meta {
    bw_file_one: "One BigWig file."
    bw_file_two: "Another BigWig file. Both BigWig files should use the same reference genome."
    action: "After pairwise align two bigwig files, perform the follow actions (Only select one keyword):\"Add\" = add signals. \"Average\" = average signals. \"Division\"= divide bigwig2 from bigwig1. Add 1 to both bigwig. \"Max\" = pick the signal that is larger. \"Min\" = pick the signal that is smaller. \"Product\" = multiply signals. \"Subtract\" = subtract signals in 2nd bigwig file from the corresponiding ones in the 1st bigwig file. \"geometricMean\" = take the geometric mean of signals."
    output_wig_file: "Output wig file"
    chunk: "Chromosome chunk size. Each chomosome will be cut into samll chunks of this size. Decrease chunk size will save more RAM. default=100000 (bp)"
  }
}