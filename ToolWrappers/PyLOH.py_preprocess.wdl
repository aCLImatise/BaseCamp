version 1.0

task PyLOHpyPreprocess {
  input {
    File? segments_bed
    Boolean? wes
    Int? min_depth
    Int? min_base_qual
    Int? min_map_qual
    Int? process_num
    String reference_genome
    String normal_bam
    String tumor_bam
    String filename_base
  }
  command <<<
    PyLOH_py preprocess \
      ~{reference_genome} \
      ~{normal_bam} \
      ~{tumor_bam} \
      ~{filename_base} \
      ~{if defined(segments_bed) then ("--segments_bed " +  '"' + segments_bed + '"') else ""} \
      ~{if (wes) then "--WES" else ""} \
      ~{if defined(min_depth) then ("--min_depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(min_base_qual) then ("--min_base_qual " +  '"' + min_base_qual + '"') else ""} \
      ~{if defined(min_map_qual) then ("--min_map_qual " +  '"' + min_map_qual + '"') else ""} \
      ~{if defined(process_num) then ("--process_num " +  '"' + process_num + '"') else ""}
  >>>
  parameter_meta {
    segments_bed: "BED file for segments. If not provided, use autosomes\\nas segments. Default is None."
    wes: "Flag indicating whether the BAM files are whole exome\\nsequencing(WES) or not. If not provided, the BAM files\\nare assumed to be whole genome sequencing(WGS).\\nDefault is False."
    min_depth: "Minimum reads depth required for both normal and tumor\\nsamples. Default is 20."
    min_base_qual: "Minimum base quality required. Default is 10."
    min_map_qual: "Minimum mapping quality required. Default is 10."
    process_num: "Number of processes to launch for preprocessing.\\nDefault is 1.\\n"
    reference_genome: "FASTA file for reference genome."
    normal_bam: "BAM file for normal sample."
    tumor_bam: "BAM file for tumor sample."
    filename_base: "Base name of preprocessed files to be created."
  }
  output {
    File out_stdout = stdout()
  }
}