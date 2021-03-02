version 1.0

task Getfeaturespy {
  input {
    Boolean? linear
    String? allow_only_features_type
    String? forbid_features_type
    String? allow_only_features_name
    String? forbid_features_name
    String? allow_only_entries
    String? forbid_entries_tax
    String? shift_coordinates_offset
    Boolean? gff
    String? output_format_namefeature
    Boolean? max
    String gb
  }
  command <<<
    getfeatures_py \
      ~{gb} \
      ~{if (linear) then "--linear" else ""} \
      ~{if defined(allow_only_features_type) then ("-p " +  '"' + allow_only_features_type + '"') else ""} \
      ~{if defined(forbid_features_type) then ("-P " +  '"' + forbid_features_type + '"') else ""} \
      ~{if defined(allow_only_features_name) then ("-n " +  '"' + allow_only_features_name + '"') else ""} \
      ~{if defined(forbid_features_name) then ("-N " +  '"' + forbid_features_name + '"') else ""} \
      ~{if defined(allow_only_entries) then ("-t " +  '"' + allow_only_entries + '"') else ""} \
      ~{if defined(forbid_entries_tax) then ("-T " +  '"' + forbid_entries_tax + '"') else ""} \
      ~{if defined(shift_coordinates_offset) then ("-o " +  '"' + shift_coordinates_offset + '"') else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if defined(output_format_namefeature) then ("-f " +  '"' + output_format_namefeature + '"') else ""} \
      ~{if (max) then "--max" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    linear: "consider genome circular"
    allow_only_features_type: "allow only features of type TYPE"
    forbid_features_type: "forbid all features of type TYPE"
    allow_only_features_name: "allow only features with name NAME"
    forbid_features_name: "forbid all features with name NAME"
    allow_only_entries: "allow only entries with TAX in the taxonomy"
    forbid_entries_tax: "forbid all entries with TAX in the taxonomy"
    shift_coordinates_offset: "shift coordinates by OFFSET"
    gff: "output gff"
    output_format_namefeature: "output format: %name=feature name, %type=feature type,\\n%start=feature start, %stop=feature end, %strand=feature strand,\\n%s=sequence, %a=accession, %n=name"
    max: "consider only max score part per gene"
    gb: ""
  }
  output {
    File out_stdout = stdout()
  }
}