version 1.0

task SecaprCleanReads {
  input {
    Directory? directory_containing_unzipped
    File? config
    Directory? output_directory_saved
    File? read_min
    String? index
    Int? seed_mismatches
    Int? palindrome_clip_threshold
    Int? simple_clip_threshold
    Int? window_size
    Int? required_quality
    Int? leading_quality
    Int? trailing_quality
    Int? crop_to_length
    Int? head_crop
    Int? minlength
    Int? cores
  }
  command <<<
    secapr clean_reads \
      ~{if defined(directory_containing_unzipped) then ("--input " +  '"' + directory_containing_unzipped + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_directory_saved) then ("--output " +  '"' + output_directory_saved + '"') else ""} \
      ~{if defined(read_min) then ("--read_min " +  '"' + read_min + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(seed_mismatches) then ("--seedMismatches " +  '"' + seed_mismatches + '"') else ""} \
      ~{if defined(palindrome_clip_threshold) then ("--palindromeClipThreshold " +  '"' + palindrome_clip_threshold + '"') else ""} \
      ~{if defined(simple_clip_threshold) then ("--simpleClipThreshold " +  '"' + simple_clip_threshold + '"') else ""} \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(required_quality) then ("--requiredQuality " +  '"' + required_quality + '"') else ""} \
      ~{if defined(leading_quality) then ("--leadingQuality " +  '"' + leading_quality + '"') else ""} \
      ~{if defined(trailing_quality) then ("--trailingQuality " +  '"' + trailing_quality + '"') else ""} \
      ~{if defined(crop_to_length) then ("--cropToLength " +  '"' + crop_to_length + '"') else ""} \
      ~{if defined(head_crop) then ("--headCrop " +  '"' + head_crop + '"') else ""} \
      ~{if defined(minlength) then ("--minLength " +  '"' + minlength + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    directory_containing_unzipped: "The directory containing the unzipped .fastq or .fq\\nfiles (raw read files)"
    config: "A configuration file containing the adapter\\ninformation and the sample names"
    output_directory_saved: "The output directory where results will be saved"
    read_min: "Set the minimum read count threshold. Any read file\\ncontaining fewer reads than this minimum threshold\\nwill not be processed further. Default: 200000"
    index: "Specify if single- or double-indexed adapters were\\nused for the library preparation (essential\\ninformation in order to interpret the control-file\\ncorrectly)."
    seed_mismatches: "Specifies the maximum mismatch count which will still\\nallow a full match to be performed. For more\\ninformation see trimmoatic tutorial. Default: 2"
    palindrome_clip_threshold: "Specifies how accurate the match between the two\\n\\\"adapter ligated\\\" reads must be for PE palindrome read\\nalignment. Default: 30"
    simple_clip_threshold: "Specifies how accurate the match between any adapter\\netc. sequence must be against a read. For more\\ninformation see trimmoatic tutorial. Default: 10"
    window_size: "Specifies the number of bases to average across. For\\nmore information see trimmoatic tutorial. Default: 4"
    required_quality: "Specifies the average quality required. For more\\ninformation see trimmoatic tutorial. Default: 15"
    leading_quality: "Specifies the minimum quality required to keep a base\\nat the beginning of the read. For more information see\\ntrimmoatic tutorial. Default: 20"
    trailing_quality: "Specifies the minimum quality required to keep a base\\nat the end of a read. For more information see\\ntrimmoatic tutorial. Default: 20"
    crop_to_length: "The number of bases to keep, from the start of the\\nread. Everything exceeding this length will be removed\\nfrom the end of the read. For more information see\\ntrimmoatic tutorial. Default: 250"
    head_crop: "The number of bases to remove from the start of the\\nread. For more information see trimmoatic tutorial.\\nDefault: 0"
    minlength: "Specifies the minimum length of reads to be kept. For\\nmore information see trimmoatic tutorial. Default: 40"
    cores: "Number of cores to be used for parallelization of\\ntrimming algorithm.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_saved = "${in_output_directory_saved}"
  }
}