version 1.0

task ExtractFastaBins.py {
  input {
    String outputOutputPath
    String? fastFastAFile
    String? clusterClusterFile
  }
  command <<<
    extract_fasta_bins.py \
      ~{fastFastAFile} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{clusterClusterFile}
  >>>
}