version 1.0

task WisestorkCount {
  input {
    Int? binsize
    File? reference
    File? bin_file
    File? path_output_bed
    File? path_input_bam
  }
  command <<<
    wisestork count \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bin_file) then ("--bin-file " +  '"' + bin_file + '"') else ""} \
      ~{if defined(path_output_bed) then ("--output " +  '"' + path_output_bed + '"') else ""} \
      ~{if defined(path_input_bam) then ("--input " +  '"' + path_input_bam + '"') else ""}
  >>>
  parameter_meta {
    binsize: "RANGE  Bin size to use. Default = 50000"
    reference: "Path to reference fasta  [required]"
    bin_file: "Optional path to region BED file"
    path_output_bed: "Path to output BED file  [required]"
    path_input_bam: "Path to input BAM file  [required]"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_bed = "${in_path_output_bed}"
  }
}