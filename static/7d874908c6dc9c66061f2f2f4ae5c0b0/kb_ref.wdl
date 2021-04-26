version 1.0

task KbRef {
  input {
    Directory? tmp
    Boolean? keep_tmp
    Boolean? verbose
    File? kallis_to
    File? bus_tools
    Int? number_split_index
    String? download_prebuilt_index
    Int? use_option_override
    String? type_prepare_files
    Boolean? laman_no
    Boolean? overwrite
    File? path_kallisto_index
    Int? path_transcripttogene_mapping
    Int? fone
    Int? f_two
    Int? cone
    Int? c_two
    String fast_a
    String gtf
    String feature
  }
  command <<<
    kb ref \
      ~{fast_a} \
      ~{gtf} \
      ~{feature} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(kallis_to) then ("--kallisto " +  '"' + kallis_to + '"') else ""} \
      ~{if defined(bus_tools) then ("--bustools " +  '"' + bus_tools + '"') else ""} \
      ~{if defined(number_split_index) then ("-n " +  '"' + number_split_index + '"') else ""} \
      ~{if defined(download_prebuilt_index) then ("-d " +  '"' + download_prebuilt_index + '"') else ""} \
      ~{if defined(use_option_override) then ("-k " +  '"' + use_option_override + '"') else ""} \
      ~{if defined(type_prepare_files) then ("--workflow " +  '"' + type_prepare_files + '"') else ""} \
      ~{if (laman_no) then "--lamanno" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(path_kallisto_index) then ("-i " +  '"' + path_kallisto_index + '"') else ""} \
      ~{if defined(path_transcripttogene_mapping) then ("-g " +  '"' + path_transcripttogene_mapping + '"') else ""} \
      ~{if defined(fone) then ("-f1 " +  '"' + fone + '"') else ""} \
      ~{if defined(f_two) then ("-f2 " +  '"' + f_two + '"') else ""} \
      ~{if defined(cone) then ("-c1 " +  '"' + cone + '"') else ""} \
      ~{if defined(c_two) then ("-c2 " +  '"' + c_two + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kb-python:0.26.0--pyhdfd78af_0"
  }
  parameter_meta {
    tmp: "Override default temporary directory"
    keep_tmp: "Do not delete the tmp directory"
    verbose: "Print debugging information"
    kallis_to: "Path to kallisto binary to use (default: kallisto)"
    bus_tools: "Path to bustools binary to use (default: bustools)"
    number_split_index: "Number of files to split the index into. If this\\noption is specified, the FASTA that is normally used\\nto create an index is split into `N` approximately-\\nequal parts. Each of these FASTAs are indexed\\nseparately. When using this option with `--workflow\\nlamanno`, the intron FASTA is split into N-1\\napproximately-equal parts and indexed, while the cDNA\\nFASTA is not split and indexed."
    download_prebuilt_index: "Download a pre-built kallisto index (along with all\\nnecessary files) instead of building it locally"
    use_option_override: "Use this option to override the k-mer length of the\\nindex. Usually, the k-mer length automatically\\ncalculated by `kb` provides the best results."
    type_prepare_files: "Type of workflow to prepare files for. Use `lamanno`\\nfor RNA velocity based on La Manno et al. 2018 logic.\\nUse `nucleus` for RNA velocity on single-nucleus RNA-\\nseq reads. Use `kite` for feature barcoding. (default:\\nstandard)"
    laman_no: "Deprecated. Use `--workflow lamanno` instead."
    overwrite: "Overwrite existing kallisto index"
    path_kallisto_index: "Path to the kallisto index to be constructed. If `-n`\\nis also specified, this is the prefix for the n\\nindices to construct."
    path_transcripttogene_mapping: "Path to transcript-to-gene mapping to be generated"
    fone: "[Optional with -d] Path to the cDNA FASTA (lamanno,\\nnucleus) or mismatch FASTA (kite) to be generated"
    f_two: "Path to the intron FASTA to be generated"
    cone: "Path to generate cDNA transcripts-to-capture"
    c_two: "Path to generate intron transcripts-to-capture"
    fast_a: "Genomic FASTA file(s), comma-delimited"
    gtf: "Reference GTF file(s), comma-delimited"
    feature: "[`kite` workflow only] Path to TSV containing barcodes\\nand feature names."
  }
  output {
    File out_stdout = stdout()
  }
}