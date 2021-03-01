version 1.0

task TaxonutilsLca {
  input {
    File? taxonomy
    File? no_lca
    Boolean? only_ranked
    Float? bit_score
    Boolean? rename
    Boolean? sorted
    String? feat_type
    File? reference
    Boolean? simple_table
    Int? krona_total
    File? out_format
    Boolean? progress
    String? gff_file
    String? output_file
  }
  command <<<
    taxon_utils lca \
      ~{gff_file} \
      ~{output_file} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(no_lca) then ("--no-lca " +  '"' + no_lca + '"') else ""} \
      ~{if (only_ranked) then "--only-ranked" else ""} \
      ~{if defined(bit_score) then ("--bitscore " +  '"' + bit_score + '"') else ""} \
      ~{if (rename) then "--rename" else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(feat_type) then ("--feat-type " +  '"' + feat_type + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (simple_table) then "--simple-table" else ""} \
      ~{if defined(krona_total) then ("--krona-total " +  '"' + krona_total + '"') else ""} \
      ~{if (out_format) then "--out-format" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    taxonomy: "Taxonomy file  [required]"
    no_lca: "File to which write records with no LCA"
    only_ranked: "If set, only taxa that have a rank will be\\nused in the lineageself. This is not advised\\nfor lineages such as Viruses, where the top\\nlevels have no rank"
    bit_score: "Minimum bitscore accepted  [default: 0]"
    rename: "Emulates BLAST behaviour for headers (keep\\nleft of first space)"
    sorted: "If the GFF file is sorted (all of a sequence\\nannotations are contiguos) can use less\\nmemory, `sort -s -k 1,1` can be used"
    feat_type: "Feature type used if the output is a GFF\\n(default is *LCA*)  [default: LCA]"
    reference: "Required reference file for the GFF, if\\nkrona is the format, contig lengths are\\nadded"
    simple_table: "Uses a 2 column table format (seq_id\\ntaxon_id) TAB separated"
    krona_total: "Total number of raw sequences (used to\\noutput correct percentages in Krona"
    out_format: "[krona|json|tab|gff]\\nFormat of output file  [default: tab]"
    progress: "Shows Progress Bar"
    gff_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_format = "${in_out_format}"
  }
}