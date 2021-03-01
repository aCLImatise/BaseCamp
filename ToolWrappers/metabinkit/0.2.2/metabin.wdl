version 1.0

task Metabin {
  input {
    File? tsv_file_name
    File? out
    Int? species
    Int? genus
    Int? family
    Int? above_f
    Directory? db
    File? species_neg_filter
    File? species_bl
    File? genus_bl
    File? family_bl
    File? filter_file
    File? filter_col
    String? rm_predicted
    Int? to_paf
    Boolean? quiet
    File? no_mbk
    Boolean? sp_discard_sp
    Boolean? sp_discard_mtt_wow
    Boolean? sp_discard_num
    Boolean? minimal_cols
  }
  command <<<
    metabin \
      ~{if defined(tsv_file_name) then ("--input " +  '"' + tsv_file_name + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(species) then ("--Species " +  '"' + species + '"') else ""} \
      ~{if defined(genus) then ("--Genus " +  '"' + genus + '"') else ""} \
      ~{if defined(family) then ("--Family " +  '"' + family + '"') else ""} \
      ~{if defined(above_f) then ("--AboveF " +  '"' + above_f + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(species_neg_filter) then ("--SpeciesNegFilter " +  '"' + species_neg_filter + '"') else ""} \
      ~{if defined(species_bl) then ("--SpeciesBL " +  '"' + species_bl + '"') else ""} \
      ~{if defined(genus_bl) then ("--GenusBL " +  '"' + genus_bl + '"') else ""} \
      ~{if defined(family_bl) then ("--FamilyBL " +  '"' + family_bl + '"') else ""} \
      ~{if defined(filter_file) then ("--FilterFile " +  '"' + filter_file + '"') else ""} \
      ~{if defined(filter_col) then ("--FilterCol " +  '"' + filter_col + '"') else ""} \
      ~{if defined(rm_predicted) then ("--rm_predicted " +  '"' + rm_predicted + '"') else ""} \
      ~{if defined(to_paf) then ("--TopAF " +  '"' + to_paf + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (no_mbk) then "--no_mbk" else ""} \
      ~{if (sp_discard_sp) then "--sp_discard_sp" else ""} \
      ~{if (sp_discard_mtt_wow) then "--sp_discard_mt2w" else ""} \
      ~{if (sp_discard_num) then "--sp_discard_num" else ""} \
      ~{if (minimal_cols) then "--minimal_cols" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metabinkit:0.2.2--r40hed695b0_1"
  }
  parameter_meta {
    tsv_file_name: "TSV file name"
    out: "output file prefix"
    species: "species %id threshold [default= 99]"
    genus: "genus %id threshold [default= 97]"
    family: "family %id threshold [default= 95]"
    above_f: "above family %id threshold [default= 90]"
    db: "directory containing the taxonomy db (nodes.dmp and names.dmp) [default= /usr/local/bin/../db/]"
    species_neg_filter: "negative filter (file with one word per line) [default= NULL]"
    species_bl: "species blacklist (file with one taxid per line) [default= NULL]"
    genus_bl: "genera blacklist (file with one taxid per line) [default= NULL]"
    family_bl: "families blacklist (file with one taxid per line) [default= NULL]"
    filter_file: "file name with the entries from the input to exclude (on entry per line)  [default= NULL]"
    filter_col: "NAME\\nColumn name to look for the values found the the file provided in the --Filter parameter  [default= sseqid]"
    rm_predicted: "Where to look (column name) for in-silico 'predicted' entries (XM_,XR_, and XP_). If no column is given then  the filter is not applied.  [default= NULL]"
    to_paf: "above family? [default= 100]"
    quiet: "enable quiet mode (less messages are printed to stdout)"
    no_mbk: "Do not use mbk: codes in the output file to explain why a sequence was not binned at a given level (NA is used throughout)"
    sp_discard_sp: "Discard species with sp. in the name"
    sp_discard_mtt_wow: "Discard species with more than two words"
    sp_discard_num: "Discard species with numbers"
    minimal_cols: "Include only the seqid and lineage information in the output table [FALSE]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_no_mbk = "${in_no_mbk}"
  }
}