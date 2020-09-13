version 1.0

task Gc3s {
  input {
    Boolean? no_menu
    Boolean? nowarn
    Boolean? silent
    Boolean? totals
    Boolean? machine
    Boolean? human
    Int? code
    Int? f_type
    Int? c_type
    Boolean? char_column_separator
    Boolean? cai
    Boolean? fop
    Boolean? cbi
    Boolean? enc
    Boolean? gc
    Boolean? gcs_three
    Boolean? sil_base
    Boolean? l_sym
    Boolean? l_aa
    Boolean? all_indices
    Boolean? aro
    Boolean? hyd
    String? cai_file
    String? cbi_file
    String? fop_file
    Boolean? coa_cu
    Boolean? coa_rs_cu
    Boolean? coa_aa
    Boolean? coa_expert
    Int? coa_axes
    Int? coa_num
    Boolean? aau
    Boolean? ra_au
    Boolean? cu
    Boolean? cut_ab
    Boolean? cut_ot
    Boolean? rs_cu
    Boolean? fast_a
    Boolean? tidy
    Boolean? reader
    Boolean? transl
    Boolean? base
    Boolean? din_uc
    File? no_blk
  }
  command <<<
    gc3s \
      ~{if (no_menu) then "-nomenu" else ""} \
      ~{if (nowarn) then "-nowarn" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if (totals) then "-totals" else ""} \
      ~{if (machine) then "-machine" else ""} \
      ~{if (human) then "-human" else ""} \
      ~{if defined(code) then ("-code " +  '"' + code + '"') else ""} \
      ~{if defined(f_type) then ("-f_type " +  '"' + f_type + '"') else ""} \
      ~{if defined(c_type) then ("-c_type " +  '"' + c_type + '"') else ""} \
      ~{if (char_column_separator) then "-t" else ""} \
      ~{if (cai) then "-cai" else ""} \
      ~{if (fop) then "-fop" else ""} \
      ~{if (cbi) then "-cbi" else ""} \
      ~{if (enc) then "-enc" else ""} \
      ~{if (gc) then "-gc" else ""} \
      ~{if (gcs_three) then "-gcs3" else ""} \
      ~{if (sil_base) then "-sil_base" else ""} \
      ~{if (l_sym) then "-L_sym" else ""} \
      ~{if (l_aa) then "-L_aa" else ""} \
      ~{if (all_indices) then "-all_indices" else ""} \
      ~{if (aro) then "-aro" else ""} \
      ~{if (hyd) then "-hyd" else ""} \
      ~{if defined(cai_file) then ("-cai_file " +  '"' + cai_file + '"') else ""} \
      ~{if defined(cbi_file) then ("-cbi_file " +  '"' + cbi_file + '"') else ""} \
      ~{if defined(fop_file) then ("-fop_file " +  '"' + fop_file + '"') else ""} \
      ~{if (coa_cu) then "-coa_cu" else ""} \
      ~{if (coa_rs_cu) then "-coa_rscu" else ""} \
      ~{if (coa_aa) then "-coa_aa" else ""} \
      ~{if (coa_expert) then "-coa_expert" else ""} \
      ~{if defined(coa_axes) then ("-coa_axes " +  '"' + coa_axes + '"') else ""} \
      ~{if defined(coa_num) then ("-coa_num " +  '"' + coa_num + '"') else ""} \
      ~{if (aau) then "-aau" else ""} \
      ~{if (ra_au) then "-raau" else ""} \
      ~{if (cu) then "-cu" else ""} \
      ~{if (cut_ab) then "-cutab" else ""} \
      ~{if (cut_ot) then "-cutot" else ""} \
      ~{if (rs_cu) then "-rscu" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (tidy) then "-tidy" else ""} \
      ~{if (reader) then "-reader" else ""} \
      ~{if (transl) then "-transl" else ""} \
      ~{if (base) then "-base" else ""} \
      ~{if (din_uc) then "-dinuc" else ""} \
      ~{if (no_blk) then "-noblk" else ""}
  >>>
  parameter_meta {
    no_menu: "Prevent the menu interface being displayed"
    nowarn: "Prevent warnings about sequences being displayed"
    silent: "Overwrite files silently"
    totals: "Concatenate all genes in inputfile"
    machine: "Machine readable output"
    human: "Human readable output"
    code: "Genetic code as defined under menu 3 option 5"
    f_type: "Fop/CBI codons as defined by menu 3 option 6"
    c_type: "Cai fitness values as defined by menu 3 option 7"
    char_column_separator: "(char)      Column separator to be used in output files (comma,tab,space)"
    cai: "calculate Codon Adaptation Index (CAI)"
    fop: "calculate Frequency of OPtimal codons index (FOP)"
    cbi: "calculate Codon Bias Index (CBI)"
    enc: "Effective Number of Codons (ENc)"
    gc: "G+C content of gene (all 3 codon positions)"
    gcs_three: "GC of synonymous codons 3rd positions"
    sil_base: "Base composition at synonymous third codon positions"
    l_sym: "Number of synonymous codons"
    l_aa: "Total number of synonymous and non-synonymous codons"
    all_indices: "All the above indices"
    aro: "Calculate aromaticity of protein"
    hyd: "Calculate hydropathicity of protein"
    cai_file: "User input file of CAI values"
    cbi_file: "User input file of CBI values"
    fop_file: "User input file of Fop values"
    coa_cu: "COA of codon usage frequencies"
    coa_rs_cu: "COA of Relative Synonymous Codon Usage"
    coa_aa: "COA of amino acid usage frequencies"
    coa_expert: "Generate detailed(expert) statistics on COA"
    coa_axes: "Select number of axis to record"
    coa_num: "Select number of genes to use to identify optimal codons\\nvalues can be whole numbers or a percentage (5 or 10%)"
    aau: "Amino Acid Usage (AAU)"
    ra_au: "Relative Amino Acid Usage (RAAU)"
    cu: "Codon Usage (CU) (default)"
    cut_ab: "Tabulation of codon usage"
    cut_ot: "Tabulation of dataset's codon usage"
    rs_cu: "Relative Synonymous Codon Usage (RSCU)"
    fast_a: "fasta format"
    tidy: "fasta format"
    reader: "Reader format (codons are separated by spaces)"
    transl: "Conceptual translation of DNA to amino acid"
    base: "Detailed report of codon G+C composition"
    din_uc: "Dinucleotide usage of the three codon pos."
    no_blk: "No bulk output to be written to file"
  }
  output {
    File out_stdout = stdout()
    File out_no_blk = "${in_no_blk}"
  }
}