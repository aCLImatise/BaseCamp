version 1.0

task Hotspot3dSearch {
  input {
    Boolean? prep_dir
    Boolean? maf_file
    Boolean? site_file
    Boolean? drug_port_file
    Boolean? output_prefix
    Boolean? skip_silent
    Boolean? missense_only
    Boolean? p_value_cut_off
    Boolean? three_d_distance_cut_off
    Boolean? linear_cut_off
    Boolean? transcript_id_header
    Boolean? amino_acid_header
  }
  command <<<
    hotspot3d search \
      ~{if (prep_dir) then "--prep-dir" else ""} \
      ~{if (maf_file) then "--maf-file" else ""} \
      ~{if (site_file) then "--site-file" else ""} \
      ~{if (drug_port_file) then "--drugport-file" else ""} \
      ~{if (output_prefix) then "--output-prefix" else ""} \
      ~{if (skip_silent) then "--skip-silent" else ""} \
      ~{if (missense_only) then "--missense-only" else ""} \
      ~{if (p_value_cut_off) then "--p-value-cutoff" else ""} \
      ~{if (three_d_distance_cut_off) then "--3d-distance-cutoff" else ""} \
      ~{if (linear_cut_off) then "--linear-cutoff" else ""} \
      ~{if (transcript_id_header) then "--transcript-id-header" else ""} \
      ~{if (amino_acid_header) then "--amino-acid-header" else ""}
  >>>
  parameter_meta {
    prep_dir: "HotSpot3D preprocessing results directory\\nREQUIRE AT LEAST ONE"
    maf_file: "Input MAF file used to search proximity results"
    site_file: "Protein site file (gene transcript position description)\\nOPTIONAL"
    drug_port_file: "DrugPort database parsing results file"
    output_prefix: "Prefix of output files, default: 3D_Proximity"
    skip_silent: "skip silent mutations, default: no"
    missense_only: "missense mutation only, default: no"
    p_value_cut_off: "p_value cutoff(<=), default: 0.05"
    three_d_distance_cut_off: "3D distance cutoff (<=), default: 10"
    linear_cut_off: "Linear distance cutoff (>= peptides), default: 0"
    transcript_id_header: "MAF file column header for transcript id's, default: transcript_name"
    amino_acid_header: "MAF file column header for amino acid changes, default: amino_acid_change"
  }
  output {
    File out_stdout = stdout()
  }
}