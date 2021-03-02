version 1.0

task SortByRefAndCorpl {
  input {
    Int? contig_name_field
    Int? contig_cordinate_field
    Directory? tmp
    String input_file_sort
    String ref_dict
  }
  command <<<
    sortByRefAndCor_pl \
      ~{input_file_sort} \
      ~{ref_dict} \
      ~{if defined(contig_name_field) then ("--k " +  '"' + contig_name_field + '"') else ""} \
      ~{if defined(contig_cordinate_field) then ("--c " +  '"' + contig_cordinate_field + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contig_name_field: ":   contig name is in the field POS (1-based)\\nof input lines."
    contig_cordinate_field: ":   contig cordinate is in the field COR (1-based)\\nof input lines."
    tmp: ": temp directory [default=/tmp]"
    input_file_sort: "input file to sort. If '-' is specified, \\nthen reads from STDIN."
    ref_dict: ".fai file, or ANY file that has contigs, in the\\ndesired soting order, as its first column."
  }
  output {
    File out_stdout = stdout()
  }
}