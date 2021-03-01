version 1.0

task DUDespy {
  input {
    File? alignmentmapping_file_sam
    File? database_file_output
    File? sam_file_format
    Int? _threads_default
    Int? taxonomic_i_d
    Int? keep_reads_percentile
    Int? minimum_numberpercentage_supporting
    String? last_considered_rank
    Int? bin_size_percentile
    String? output_prefix_stdout
    Boolean? show_programs_number
  }
  command <<<
    DUDes_py \
      ~{if defined(alignmentmapping_file_sam) then ("-s " +  '"' + alignmentmapping_file_sam + '"') else ""} \
      ~{if defined(database_file_output) then ("-d " +  '"' + database_file_output + '"') else ""} \
      ~{if defined(sam_file_format) then ("-i " +  '"' + sam_file_format + '"') else ""} \
      ~{if defined(_threads_default) then ("-t " +  '"' + _threads_default + '"') else ""} \
      ~{if defined(taxonomic_i_d) then ("-x " +  '"' + taxonomic_i_d + '"') else ""} \
      ~{if defined(keep_reads_percentile) then ("-m " +  '"' + keep_reads_percentile + '"') else ""} \
      ~{if defined(minimum_numberpercentage_supporting) then ("-a " +  '"' + minimum_numberpercentage_supporting + '"') else ""} \
      ~{if defined(last_considered_rank) then ("-l " +  '"' + last_considered_rank + '"') else ""} \
      ~{if defined(bin_size_percentile) then ("-b " +  '"' + bin_size_percentile + '"') else ""} \
      ~{if defined(output_prefix_stdout) then ("-o " +  '"' + output_prefix_stdout + '"') else ""} \
      ~{if (show_programs_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignmentmapping_file_sam: "Alignment/mapping file in SAM format. DUDes does not\\ndepend on any specific read mapper, but it requires\\nheader information (@SQ\\nSN:gi|556555098|ref|NC_022650.1| LN:55956) and\\nmismatch information (check -i)"
    database_file_output: "Database file (output from DUDesDB [.npz])"
    sam_file_format: "SAM file format ['nm': sam file with standard cigar\\nstring plus NM flag (NM:i:[0-9]*) for mismatches count\\n| 'ex': just the extended cigar string]. Default: 'nm'"
    _threads_default: "# of threads. Default: 1"
    taxonomic_i_d: "Taxonomic Id used to start the analysis (1 = root).\\nDefault: 1"
    keep_reads_percentile: "Keep reads up to this number/percentile of matches (0:\\noff / 0-1: percentile / >=1: match count). Default: 0"
    minimum_numberpercentage_supporting: "Minimum number/percentage of supporting matches to\\nconsider the reference (0: off / 0-1: percentage /\\n>=1: read number). Default: 0.001"
    last_considered_rank: "Last considered rank [superkingdom,phylum,class,order,\\nfamily,genus,species,strain]. Default: 'species'"
    bin_size_percentile: "Bin size (0-1: percentile from the lengths of all\\nreferences in the database / >=1: bp). Default: 0.25"
    output_prefix_stdout: "Output prefix. Default: STDOUT"
    show_programs_number: "show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
    File out_database_file_output = "${in_database_file_output}"
  }
}