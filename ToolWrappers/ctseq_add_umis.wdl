version 1.0

task CtseqAddUmis {
  input {
    String? forward_ext
    String? umi_type
    Int? umi_length
    File? dir
    File? umi_ext
  }
  command <<<
    ctseq add_umis \
      ~{if defined(forward_ext) then ("--forwardExt " +  '"' + forward_ext + '"') else ""} \
      ~{if defined(umi_type) then ("--umiType " +  '"' + umi_type + '"') else ""} \
      ~{if defined(umi_length) then ("--umiLength " +  '"' + umi_length + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(umi_ext) then ("--umiExt " +  '"' + umi_ext + '"') else ""}
  >>>
  parameter_meta {
    forward_ext: "[--umiExt UMIEXT]"
    umi_type: "Choose 'separate' if the UMIs for the reads are\\ncontained in a separate fastq file where the line\\nafter the read name is the UMI. Choose 'inline' if the\\nUMIs are already included in the forward/reverse read\\nfastq files in the following format: '@M01806:488:0000\\n00000-J36GT:1:1101:15963:1363:GTAGGTAAAGTG\\n1:N:0:CGAGTAAT' where 'GTAGGTAAAGTG' is the UMI"
    umi_length: "Length of UMI sequence, e.g. 12 (required)"
    dir: "Path to directory containing fastq files;\\nforward/reverse reads and umi files. If no '--dir' is\\nspecified, ctseq will look in your current directory."
    umi_ext: "Unique extension of fastq files containing the UMIs\\n(This flag is REQUIRED if UMIs are contained in\\nseparate fastq file). Make sure to include '.gz' if\\nyour files are compressed.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}