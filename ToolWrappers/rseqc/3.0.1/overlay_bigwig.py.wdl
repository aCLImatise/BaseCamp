version 1.0

task OverlayBigwigpy {
  input {
    Int? bw_file_one
    Int? bw_file_two
    Int? action
    File? output_wig_file
    Int? chunk
  }
  command <<<
    overlay_bigwig_py \
      ~{if defined(bw_file_one) then ("--bwfile1 " +  '"' + bw_file_one + '"') else ""} \
      ~{if defined(bw_file_two) then ("--bwfile2 " +  '"' + bw_file_two + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(output_wig_file) then ("--output " +  '"' + output_wig_file + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bw_file_one: "One BigWig file."
    bw_file_two: "Another BigWig file. Both BigWig files should use the\\nsame reference genome."
    action: "After pairwise align two bigwig files, perform the\\nfollow actions (Only select one keyword):\\\"Add\\\" = add\\nsignals. \\\"Average\\\" = average signals. \\\"Division\\\"=\\ndivide bigwig2 from bigwig1. Add 1 to both bigwig.\\n\\\"Max\\\" = pick the signal that is larger. \\\"Min\\\" = pick\\nthe signal that is smaller. \\\"Product\\\" = multiply\\nsignals. \\\"Subtract\\\" = subtract signals in 2nd bigwig\\nfile from the corresponiding ones in the 1st bigwig\\nfile. \\\"geometricMean\\\" = take the geometric mean of\\nsignals."
    output_wig_file: "Output wig file"
    chunk: "Chromosome chunk size. Each chomosome will be cut into\\nsamll chunks of this size. Decrease chunk size will\\nsave more RAM. default=100000 (bp)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_wig_file = "${in_output_wig_file}"
  }
}