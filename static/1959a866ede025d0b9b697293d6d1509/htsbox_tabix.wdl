version 1.0

task HtsboxTabix {
  input {
    String? preset_gff_bed
    Int? column_number_sequence
    Int? column_number_region_start
    Int? column_number_region_end
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
      ~{if defined(column_number_region_start) then ("-b " +  '"' + column_number_region_start + '"') else ""} \
      ~{if defined(column_number_region_end) then ("-e " +  '"' + column_number_region_end + '"') else ""} \
      ~{true="-0" false="" specify_coordinates_zerobased} \
      ~{if defined(skip_first_lines) then ("-S " +  '"' + skip_first_lines + '"') else ""} \
      ~{if defined(skip_lines_starting) then ("-c " +  '"' + skip_lines_starting + '"') else ""} \
      ~{true="-a" false="" print_all_records} \
      ~{true="-f" false="" force_overwrite_index} \
      ~{if defined(set_minimal_size) then ("-m " +  '"' + set_minimal_size + '"') else ""}
  >>>
  parameter_meta {
    preset_gff_bed: "preset: gff, bed, sam or vcf [gff]"
    column_number_sequence: "column number for sequence names (suppressed by -p) [1]"
    column_number_region_start: "column number for region start [4]"
    column_number_region_end: "column number for region end (if no end, set INT to -b) [5]"
    specify_coordinates_zerobased: "specify coordinates are zero-based"
    skip_first_lines: "skip first INT lines [0]"
    skip_lines_starting: "skip lines starting with CHAR [null]"
    print_all_records: "print all records"
    force_overwrite_index: "force to overwrite existing index"
    set_minimal_size: "set the minimal interval size to 1<<INT; 0 for the old tabix index [0]"
    tab_ix: ""
    in_do_tgz: ""
  }
}