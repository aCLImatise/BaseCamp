version 1.0

task Pepquery {
  input {
    Directory? an_no
    Int? max_missed_cleavages
    Int? cpu
    File? db
    Boolean? decoy
    Int? non_enzyme_trypsin
    Int? frame_translate_sequence
    Float? fix_mod
    Int? fragment_method
    Boolean? hc
    String? take_protein_dna
    File? index_type
    Float? it_ol
    Int? scoring_method_hyperscore
    Int? max_charge
    Int? maxlength
    Int? max_var
    Int? min_charge
    Int? minlength
    Int? min_peaks
    Int? min_score
    File? ms
    Int? number_random_peptides
    String? output_dir
    String? pep
    File? prefix
    Boolean? print_ptm
    Int? input_typeproteindnavcfbedgtf
    File? tag
    Int? to_l
    String? to_lu
    Boolean? tp
    Boolean? um
    String options
    String searching
  }
  command <<<
    pepquery \
      ~{options} \
      ~{searching} \
      ~{if defined(an_no) then ("-anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(max_missed_cleavages) then ("-c " +  '"' + max_missed_cleavages + '"') else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if (decoy) then "-decoy" else ""} \
      ~{if defined(non_enzyme_trypsin) then ("-e " +  '"' + non_enzyme_trypsin + '"') else ""} \
      ~{if defined(frame_translate_sequence) then ("-f " +  '"' + frame_translate_sequence + '"') else ""} \
      ~{if defined(fix_mod) then ("-fixMod " +  '"' + fix_mod + '"') else ""} \
      ~{if defined(fragment_method) then ("-fragmentMethod " +  '"' + fragment_method + '"') else ""} \
      ~{if (hc) then "-hc" else ""} \
      ~{if defined(take_protein_dna) then ("-i " +  '"' + take_protein_dna + '"') else ""} \
      ~{if defined(index_type) then ("-indexType " +  '"' + index_type + '"') else ""} \
      ~{if defined(it_ol) then ("-itol " +  '"' + it_ol + '"') else ""} \
      ~{if defined(scoring_method_hyperscore) then ("-m " +  '"' + scoring_method_hyperscore + '"') else ""} \
      ~{if defined(max_charge) then ("-maxCharge " +  '"' + max_charge + '"') else ""} \
      ~{if defined(maxlength) then ("-maxLength " +  '"' + maxlength + '"') else ""} \
      ~{if defined(max_var) then ("-maxVar " +  '"' + max_var + '"') else ""} \
      ~{if defined(min_charge) then ("-minCharge " +  '"' + min_charge + '"') else ""} \
      ~{if defined(minlength) then ("-minLength " +  '"' + minlength + '"') else ""} \
      ~{if defined(min_peaks) then ("-minPeaks " +  '"' + min_peaks + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(ms) then ("-ms " +  '"' + ms + '"') else ""} \
      ~{if defined(number_random_peptides) then ("-n " +  '"' + number_random_peptides + '"') else ""} \
      ~{if defined(output_dir) then ("-o " +  '"' + output_dir + '"') else ""} \
      ~{if defined(pep) then ("-pep " +  '"' + pep + '"') else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (print_ptm) then "-printPTM" else ""} \
      ~{if defined(input_typeproteindnavcfbedgtf) then ("-t " +  '"' + input_typeproteindnavcfbedgtf + '"') else ""} \
      ~{if defined(tag) then ("-tag " +  '"' + tag + '"') else ""} \
      ~{if defined(to_l) then ("-tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(to_lu) then ("-tolu " +  '"' + to_lu + '"') else ""} \
      ~{if (tp) then "-tp" else ""} \
      ~{if (um) then "-um" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pepquery:1.6.0--0"
  }
  parameter_meta {
    an_no: "Annotation files folder for VCF/BED/GTF"
    max_missed_cleavages: "The max missed cleavages, default is 2"
    cpu: "The number of cpus used, default is 1"
    db: "Fasta format database file"
    decoy: "In target protein identification mode, try to\\nidentity the decoy version of the selected target\\nprotein. Default is false."
    non_enzyme_trypsin: "0:Non enzyme, 1:Trypsin (default), 2:Trypsin (no\\nP rule), 3:Arg-C, 4:Arg-C (no P rule), 5:Arg-N,\\n6:Glu-C, 7:Lys-C"
    frame_translate_sequence: "The frame to translate DNA sequence to protein.\\nThe right format is like this:\\n\\\"1,2,3,4,5,6\\\",\\\"1,2,3\\\",\\\"1\\\". \\\"0\\\" means to keep the\\nlongest frame. In default, for each frame only\\nthe longest protein is used."
    fix_mod: "Fixed modification, the format is like : 1,2,3.\\nDefault is 6 (Carbamidomethylation(C)[57.02])"
    fragment_method: "1: CID/HCD (default), 2: ETD"
    hc: "When perform validation with unrestricted\\nmodification searching (UMS), whether or not to\\nuse more stringent criterion. TRUE:\\nscore(UMS)>=score(targetPSM); FALSE:\\nscore(UMS)>score(targetPSM), default"
    take_protein_dna: "Take protein, DNA or VCF as input"
    index_type: "1: index (1-based), 2: spectrum title in MGF\\nfile. Default is 1."
    it_ol: "Fragment ion m/z tolerance, default is 0.6da"
    scoring_method_hyperscore: "Scoring method: 1=HyperScore (default), 2=MVH"
    max_charge: "The maximum charge to consider if the charge\\nstate is not available, default is 3"
    maxlength: "The maximum length of peptide to consider,\\ndefault is 45"
    max_var: "Max number of variable modifications, default is\\n3"
    min_charge: "The minimum charge to consider if the charge\\nstate is not available, default is 2"
    minlength: "The minimum length of peptide to consider,\\ndefault is 7"
    min_peaks: "Min peaks in spectrum, default is 10"
    min_score: "Minimum score to consider for peptide searching,\\ndefault is 12"
    ms: "Spectrum file used for identification, mgf format"
    number_random_peptides: "The number of random peptides, default is 1000"
    output_dir: "Output dir"
    pep: "Peptide sequence which you want to search"
    prefix: "Output file prefix"
    print_ptm: "Print PTMs"
    input_typeproteindnavcfbedgtf: "Input type:\\n1=>protein,2=>DNA,3=>VCF,4=>BED,5=>GTF"
    tag: "A tag file"
    to_l: "Precursor ion m/z tolerance, default is 10"
    to_lu: "The unit of precursor ion m/z tolerance, default\\nis ppm"
    tp: "Whether or not to perform target protein\\nidentification. If you set this parameter, then\\nthe input value for -i is a protein ID from the\\ninput reference protein database (-db)"
    um: "Validation with unrestricted modification"
    options: "-aa                     Whether or not to consider aa substitution\\nmodifications when perform modification\\nfiltering. In default, don't consider."
    searching: "-varMod <arg>           Variable modification, the format is like :"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}