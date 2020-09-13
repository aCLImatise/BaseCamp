version 1.0

task WisestorkZscore {
  input {
    Int? binsize
    File? reference
    File? bin_file
    File? path_input_file
    File? path_output_bed
    File? dictionary_file
  }
  command <<<
    wisestork zscore \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bin_file) then ("--bin-file " +  '"' + bin_file + '"') else ""} \
      ~{if defined(path_input_file) then ("--input " +  '"' + path_input_file + '"') else ""} \
      ~{if defined(path_output_bed) then ("--output " +  '"' + path_output_bed + '"') else ""} \
      ~{if defined(dictionary_file) then ("--dictionary-file " +  '"' + dictionary_file + '"') else ""}
  >>>
  parameter_meta {
    binsize: "RANGE  Bin size to use. Default = 50000"
    reference: "Path to reference fasta  [required]"
    bin_file: "Optional path to region BED file"
    path_input_file: "Path to input BED file  [required]"
    path_output_bed: "Path to output BED file  [required]"
    dictionary_file: "Path to dictionary BED file  [required]"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_bed = "${in_path_output_bed}"
  }
}