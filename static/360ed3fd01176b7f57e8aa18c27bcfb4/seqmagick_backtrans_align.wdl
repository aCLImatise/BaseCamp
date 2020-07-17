version 1.0

task SeqmagickBacktransAlign {
  input {
    String? out_file
    String? translation_table
    String? fail_action
    String protein_align
    String nucl_align
  }
  command <<<
    seqmagick backtrans-align \
      ~{protein_align} \
      ~{nucl_align} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(translation_table) then ("--translation-table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(fail_action) then ("--fail-action " +  '"' + fail_action + '"') else ""}
  >>>
  parameter_meta {
    out_file: "Output destination. Default: STDOUT"
    translation_table: "Translation table to use. [Default: standard- ambiguous]"
    fail_action: "Action to take on an ambiguous codon [default: fail]"
    protein_align: "Protein Alignment"
    nucl_align: "FASTA Alignment"
  }
}