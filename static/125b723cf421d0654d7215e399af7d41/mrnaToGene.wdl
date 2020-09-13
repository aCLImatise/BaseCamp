version 1.0

task MrnaToGene {
  input {
    String? db
    File? cds_db
    File? cds_file
    Int? insert_merge_size
    String? small_insert_size
    Boolean? cds_merge_size
    Boolean? cds_merge_mod_three
    Boolean? utr_merge_size
    Boolean? require_utr
    Boolean? gene_pred_ext
    Boolean? all_cds
    Boolean? no_cds
    Boolean? keep_invalid
    Boolean? quiet
    Boolean? ignore_uniq_suffix
    String psl
  }
  command <<<
    mrnaToGene \
      ~{psl} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(cds_db) then ("-cdsDb " +  '"' + cds_db + '"') else ""} \
      ~{if defined(cds_file) then ("-cdsFile " +  '"' + cds_file + '"') else ""} \
      ~{if defined(insert_merge_size) then ("-insertMergeSize " +  '"' + insert_merge_size + '"') else ""} \
      ~{if defined(small_insert_size) then ("-smallInsertSize " +  '"' + small_insert_size + '"') else ""} \
      ~{if (cds_merge_size) then "-cdsMergeSize" else ""} \
      ~{if (cds_merge_mod_three) then "-cdsMergeMod3" else ""} \
      ~{if (utr_merge_size) then "-utrMergeSize" else ""} \
      ~{if (require_utr) then "-requireUtr" else ""} \
      ~{if (gene_pred_ext) then "-genePredExt" else ""} \
      ~{if (all_cds) then "-allCds" else ""} \
      ~{if (no_cds) then "-noCds" else ""} \
      ~{if (keep_invalid) then "-keepInvalid" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (ignore_uniq_suffix) then "-ignoreUniqSuffix" else ""}
  >>>
  parameter_meta {
    db: "- get PSLs and CDS from this database, psl specifies the table."
    cds_db: "- get CDS from this database, psl is a file."
    cds_file: "- get CDS from this file, psl is a file.\\nFile is tab separate with name as the first column and\\nNCBI CDS the second"
    insert_merge_size: "- Merge inserts (gaps) no larger than this many bases.\\nA negative size disables merging of blocks.  This differs from specifying zero\\nin that adjacent blocks will not be merged, allowing tracking of frame for\\neach block. Defaults to 8 unless -cdsMergeSize or -utrMergeSize are specified,\\nif either of these are specified, this option is ignored."
    small_insert_size: "- alias for -insertMergetSize"
    cds_merge_size: "=-1 - merge gaps in CDS no larger than this size.\\nA negative values disables."
    cds_merge_mod_three: "- only merge CDS gaps if they mod 3"
    utr_merge_size: "=-1  - merge gaps in UTR no larger than this size.\\nA negative values disables."
    require_utr: "- Drop sequences that don't have both 5' and 3' UTR annotated."
    gene_pred_ext: "- create a extended genePred, including frame information."
    all_cds: "- consider PSL to be all CDS."
    no_cds: "- consider PSL to not contain any CDS."
    keep_invalid: "- Keep sequences with invalid CDS."
    quiet: "- Don't print print info about dropped sequences."
    ignore_uniq_suffix: "- ignore all characters after last `-' in qName\\nwhen looking up CDS. Used when a suffix has been added to make qName\\nunique.  It is not removed from the name in the genePred.\\n"
    psl: ""
  }
  output {
    File out_stdout = stdout()
  }
}