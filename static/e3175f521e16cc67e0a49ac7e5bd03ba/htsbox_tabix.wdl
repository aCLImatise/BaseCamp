version 1.0

task HtsboxTabix {
  input {
    String? preset_gff_bed
    Int? column_number_sequence
    Int? column_number_region
    Int? column_number_set
    Boolean? specify_coordinates_zerobased
    Int? skip_first_lines
    String? skip_lines_starting
    Boolean? print_all_records
    Boolean? force_overwrite_index
    Int? set_minimal_size
    String tab_ix
    String in_do_tgz
  }
  command <<<
    htsbox tabix \
      ~{tab_ix} \
      ~{in_do_tgz} \
      ~{if defined(preset_gff_bed) then ("-p " +  '"' + preset_gff_bed + '"') else ""} \
      ~{if defined(column_number_sequence) then ("-s " +  '"' + column_number_sequence + '"') else ""} \
      ~{if defined(column_number_region) then ("-b " +  '"' + column_number_region + '"') else ""} \
      ~{if defined(column_number_set) then ("-e " +  '"' + column_number_set + '"') else ""} \
      ~{if (specify_coordinates_zerobased) then "-0" else ""} \
      ~{if defined(skip_first_lines) then ("-S " +  '"' + skip_first_lines + '"') else ""} \
      ~{if defined(skip_lines_starting) then ("-c " +  '"' + skip_lines_starting + '"') else ""} \
      ~{if (print_all_records) then "-a" else ""} \
      ~{if (force_overwrite_index) then "-f" else ""} \
      ~{if defined(set_minimal_size) then ("-m " +  '"' + set_minimal_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    preset_gff_bed: "preset: gff, bed, sam or vcf [gff]"
    column_number_sequence: "column number for sequence names (suppressed by -p) [1]"
    column_number_region: "column number for region start [4]"
    column_number_set: "column number for region end (if no end, set INT to -b) [5]"
    specify_coordinates_zerobased: "specify coordinates are zero-based"
    skip_first_lines: "skip first INT lines [0]"
    skip_lines_starting: "skip lines starting with CHAR [null]"
    print_all_records: "print all records"
    force_overwrite_index: "force to overwrite existing index"
    set_minimal_size: "set the minimal interval size to 1<<INT; 0 for the old tabix index [0]"
    tab_ix: ""
    in_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}