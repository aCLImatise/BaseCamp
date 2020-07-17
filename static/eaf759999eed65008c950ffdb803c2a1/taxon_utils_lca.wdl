version 1.0

task TaxonUtilsLca {
  input {
    String? taxonomy
    File? no_lca
    Boolean? only_ranked
    Float? bit_score
    Boolean? rename
    Boolean? sorted
    String? feat_type
    File? reference
    Boolean? simple_table
    Int? krona_total
    Boolean? out_format
    Boolean? progress
    String? gff_file
    String? output_file
  }
  command <<<
    taxon-utils lca \
      ~{gff_file} \
      ~{output_file} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(no_lca) then ("--no-lca " +  '"' + no_lca + '"') else ""} \
      ~{true="--only-ranked" false="" only_ranked} \
      ~{if defined(bit_score) then ("--bitscore " +  '"' + bit_score + '"') else ""} \
      ~{true="--rename" false="" rename} \
      ~{true="--sorted" false="" sorted} \
      ~{if defined(feat_type) then ("--feat-type " +  '"' + feat_type + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--simple-table" false="" simple_table} \
      ~{if defined(krona_total) then ("--krona-total " +  '"' + krona_total + '"') else ""} \
      ~{true="--out-format" false="" out_format} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    taxonomy: "Taxonomy file  [required]"
    no_lca: "File to which write records with no LCA"
    only_ranked: "If set, only taxa that have a rank will be used in the lineageself. This is not advised for lineages such as Viruses, where the top levels have no rank"
    bit_score: "Minimum bitscore accepted  [default: 0]"
    rename: "Emulates BLAST behaviour for headers (keep left of first space)"
    sorted: "If the GFF file is sorted (all of a sequence annotations are contiguos) can use less memory, `sort -s -k 1,1` can be used"
    feat_type: "Feature type used if the output is a GFF (default is *LCA*)  [default: LCA]"
    reference: "Reference file for the GFF, if supplied a GFF file is the output"
    simple_table: "Uses a 2 column table format (seq_id taxon_id) TAB separated"
    krona_total: "Total number of raw sequences (used to output correct percentages in Krona"
    out_format: "[krona|json|tab|gff] Format of output file  [default: tab]"
    progress: "Shows Progress Bar"
    gff_file: ""
    output_file: ""
  }
}