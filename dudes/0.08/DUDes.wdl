version 1.0

task DUDes.py {
  input {
    String? alignmentmapping_file_dudes
    String? database_file_output
    String? sam_file_format
    String? _threads_default
    String? i_d_used
    Int? keep_reads_numberpercentile
    Int? minimum_numberpercentage_supporting
    String? last_considered_rank
    String? bin_size_percentile
    String? output_prefix_stdout
    Boolean? show_programs_version
  }
  command <<<
    DUDes.py \
      ~{if defined(alignmentmapping_file_dudes) then ("-s " +  '"' + alignmentmapping_file_dudes + '"') else ""} \
      ~{if defined(database_file_output) then ("-d " +  '"' + database_file_output + '"') else ""} \
      ~{if defined(sam_file_format) then ("-i " +  '"' + sam_file_format + '"') else ""} \
      ~{if defined(_threads_default) then ("-t " +  '"' + _threads_default + '"') else ""} \
      ~{if defined(i_d_used) then ("-x " +  '"' + i_d_used + '"') else ""} \
      ~{if defined(keep_reads_numberpercentile) then ("-m " +  '"' + keep_reads_numberpercentile + '"') else ""} \
      ~{if defined(minimum_numberpercentage_supporting) then ("-a " +  '"' + minimum_numberpercentage_supporting + '"') else ""} \
      ~{if defined(last_considered_rank) then ("-l " +  '"' + last_considered_rank + '"') else ""} \
      ~{if defined(bin_size_percentile) then ("-b " +  '"' + bin_size_percentile + '"') else ""} \
      ~{if defined(output_prefix_stdout) then ("-o " +  '"' + output_prefix_stdout + '"') else ""} \
      ~{true="-v" false="" show_programs_version}
  >>>
  parameter_meta {
    alignmentmapping_file_dudes: "Alignment/mapping file in SAM format. DUDes does not depend on any specific read mapper, but it requires header information (@SQ SN:gi|556555098|ref|NC_022650.1| LN:55956) and mismatch information (check -i)"
    database_file_output: "Database file (output from DUDesDB [.npz])"
    sam_file_format: "SAM file format ['nm': sam file with standard cigar string plus NM flag (NM:i:[0-9]*) for mismatches count | 'ex': just the extended cigar string]. Default: 'nm'"
    _threads_default: "# of threads. Default: 1"
    i_d_used: "Taxonomic Id used to start the analysis (1 = root). Default: 1"
    keep_reads_numberpercentile: "Keep reads up to this number/percentile of matches (0: off / 0-1: percentile / >=1: match count). Default: 0"
    minimum_numberpercentage_supporting: "Minimum number/percentage of supporting matches to consider the reference (0: off / 0-1: percentage / >=1: read number). Default: 0.001"
    last_considered_rank: "Last considered rank [superkingdom,phylum,class,order, family,genus,species,strain]. Default: 'species'"
    bin_size_percentile: "Bin size (0-1: percentile from the lengths of all references in the database / >=1: bp). Default: 0.25"
    output_prefix_stdout: "Output prefix. Default: STDOUT"
    show_programs_version: "show program's version number and exit"
  }
}