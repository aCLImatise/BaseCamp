version 1.0

task Tabix {
  input {
    String? preset_gff_bed
    Int? sequence_name_column
    Int? start_column
    Int? end_column_be
    Int? skip_first_lines
    String? symbol_commentmeta_lines
    File? replace_header_content
    Boolean? region_bed_file
    Boolean? zerobased_coordinate
    Boolean? print_only_lines
    Boolean? list_chromosome_names
    Boolean? force_overwrite_index
    String indottabdotbgz
  }
  command <<<
    tabix \
      ~{indottabdotbgz} \
      ~{if defined(preset_gff_bed) then ("-p " +  '"' + preset_gff_bed + '"') else ""} \
      ~{if defined(sequence_name_column) then ("-s " +  '"' + sequence_name_column + '"') else ""} \
      ~{if defined(start_column) then ("-b " +  '"' + start_column + '"') else ""} \
      ~{if defined(end_column_be) then ("-e " +  '"' + end_column_be + '"') else ""} \
      ~{if defined(skip_first_lines) then ("-S " +  '"' + skip_first_lines + '"') else ""} \
      ~{if defined(symbol_commentmeta_lines) then ("-c " +  '"' + symbol_commentmeta_lines + '"') else ""} \
      ~{if defined(replace_header_content) then ("-r " +  '"' + replace_header_content + '"') else ""} \
      ~{if (region_bed_file) then "-B" else ""} \
      ~{if (zerobased_coordinate) then "-0" else ""} \
      ~{if (print_only_lines) then "-H" else ""} \
      ~{if (list_chromosome_names) then "-l" else ""} \
      ~{if (force_overwrite_index) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    preset_gff_bed: "preset: gff, bed, sam, vcf, psltbl [gff]"
    sequence_name_column: "sequence name column [1]"
    start_column: "start column [4]"
    end_column_be: "end column; can be identical to '-b' [5]"
    skip_first_lines: "skip first INT lines [0]"
    symbol_commentmeta_lines: "symbol for comment/meta lines [#]"
    replace_header_content: "replace the header with the content of FILE [null]"
    region_bed_file: "region1 is a BED file (entire file will be read)"
    zerobased_coordinate: "zero-based coordinate"
    print_only_lines: "print only the header lines"
    list_chromosome_names: "list chromosome names"
    force_overwrite_index: "force to overwrite the index"
    indottabdotbgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}