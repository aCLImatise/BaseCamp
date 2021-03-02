version 1.0

task Blast2gffUniprot {
  input {
    String? verbose
    Boolean? no_split
    File? fast_a_file
    Int? db_quality
    Float? bit_score
    String? attr_value
    String? feat_type
    Boolean? progress
    String? blast_file
    String? gff_file
  }
  command <<<
    blast2gff uniprot \
      ~{blast_file} \
      ~{gff_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (no_split) then "--no-split" else ""} \
      ~{if defined(fast_a_file) then ("--fasta-file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(db_quality) then ("--db-quality " +  '"' + db_quality + '"') else ""} \
      ~{if defined(bit_score) then ("--bitscore " +  '"' + bit_score + '"') else ""} \
      ~{if defined(attr_value) then ("--attr-value " +  '"' + attr_value + '"') else ""} \
      ~{if defined(feat_type) then ("--feat-type " +  '"' + feat_type + '"') else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "Uniprot database used with BLAST  [default:\\nUNIPROT-SP]"
    no_split: "if used, the script assumes that the sequence\\nheader will be used as gene_id"
    fast_a_file: "Optional FASTA file with the query sequences"
    db_quality: "Quality of the DB used  [default: 10]"
    bit_score: "Minimum bitscore to keep the annotation\\n[default: 0.0]"
    attr_value: "Additional attribute and value to add to each\\nannotation, in the form attr:value"
    feat_type: "Feature type to use in the GFF  [default: CDS]"
    progress: "Shows Progress Bar"
    blast_file: ""
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}