version 1.0

task SortByRefAndCor.pl {
  input {
    String? contig_name_field
    String? contig_cordinate_field
    String? tmp
    String input_file_sort
    String ref_dict
  }
  command <<<
    sortByRefAndCor.pl \
      ~{input_file_sort} \
      ~{ref_dict} \
      ~{if defined(contig_name_field) then ("--k " +  '"' + contig_name_field + '"') else ""} \
      ~{if defined(contig_cordinate_field) then ("--c " +  '"' + contig_cordinate_field + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""}
  >>>
  parameter_meta {
    contig_name_field: ":   contig name is in the field POS (1-based) of input lines."
    contig_cordinate_field: ":   contig cordinate is in the field COR (1-based) of input lines."
    tmp: ": temp directory [default=/tmp]"
    input_file_sort: "input file to sort. If '-' is specified,  then reads from STDIN."
    ref_dict: ".fai file, or ANY file that has contigs, in the desired soting order, as its first column."
  }
}