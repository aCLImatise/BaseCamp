version 1.0

task WisestorkNewref {
  input {
    Int? binsize
    File? reference
    File? bin_file
    File? paths_input_beds
    File? path_output_bed
    Int? n_bins
  }
  command <<<
    wisestork newref \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bin_file) then ("--bin-file " +  '"' + bin_file + '"') else ""} \
      ~{if defined(paths_input_beds) then ("--input " +  '"' + paths_input_beds + '"') else ""} \
      ~{if defined(path_output_bed) then ("--output " +  '"' + path_output_bed + '"') else ""} \
      ~{if defined(n_bins) then ("--n-bins " +  '"' + n_bins + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    binsize: "RANGE  Bin size to use. Default = 50000"
    reference: "Path to reference fasta  [required]"
    bin_file: "Optional path to region BED file"
    paths_input_beds: "Path(s) to input BEDs  [required]"
    path_output_bed: "Path to output BED file  [required]"
    n_bins: "Amount of neighbours bins to consider per bin"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_bed = "${in_path_output_bed}"
  }
}