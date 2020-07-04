version 1.0

task Pepquery {
  input {
    Boolean? aa
    String? an_no
    String? max_missed_cleavages
    String? cpu
    String? db
    Boolean? decoy
    String? non_enzyme_trypsin
    String? frame_translate_sequence
    String? fix_mod
    String? fragment_method
    Boolean? hc
    String? take_protein_dna
    String? it_ol
    String? scoring_hyperscore_default
    String? max_charge
    String? maxlength
    String? max_var
    String? min_charge
    String? minlength
    String? min_peaks
    String? min_score
    String? ms
    String? number_random_peptides
    String? output_dir
    String? pep
    String? prefix
    Boolean? print_ptm
    String? input_type_proteindnavcfbedgtf
    String? tag
    String? to_l
    String? to_lu
    Boolean? tp
    Boolean? um
    String? varmod
  }
  command <<<
    pepquery \
      ~{true="-aa" false="" aa} \
      ~{if defined(an_no) then ("-anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(max_missed_cleavages) then ("-c " +  '"' + max_missed_cleavages + '"') else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{true="-decoy" false="" decoy} \
      ~{if defined(non_enzyme_trypsin) then ("-e " +  '"' + non_enzyme_trypsin + '"') else ""} \
      ~{if defined(frame_translate_sequence) then ("-f " +  '"' + frame_translate_sequence + '"') else ""} \
      ~{if defined(fix_mod) then ("-fixMod " +  '"' + fix_mod + '"') else ""} \
      ~{if defined(fragment_method) then ("-fragmentMethod " +  '"' + fragment_method + '"') else ""} \
      ~{true="-hc" false="" hc} \
      ~{if defined(take_protein_dna) then ("-i " +  '"' + take_protein_dna + '"') else ""} \
      ~{if defined(it_ol) then ("-itol " +  '"' + it_ol + '"') else ""} \
      ~{if defined(scoring_hyperscore_default) then ("-m " +  '"' + scoring_hyperscore_default + '"') else ""} \
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
      ~{true="-printPTM" false="" print_ptm} \
      ~{if defined(input_type_proteindnavcfbedgtf) then ("-t " +  '"' + input_type_proteindnavcfbedgtf + '"') else ""} \
      ~{if defined(tag) then ("-tag " +  '"' + tag + '"') else ""} \
      ~{if defined(to_l) then ("-tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(to_lu) then ("-tolu " +  '"' + to_lu + '"') else ""} \
      ~{true="-tp" false="" tp} \
      ~{true="-um" false="" um} \
      ~{if defined(varmod) then ("-varMod " +  '"' + varmod + '"') else ""}
  >>>
  parameter_meta {
    aa: "Whether or not to consider aa substitution modifications when perform modification filtering. In default, don't consider."
    an_no: "Annotation files folder for VCF/BED/GTF"
    max_missed_cleavages: "The max missed cleavages, default is 2"
    cpu: "The number of cpus used, default is 1"
    db: "Fasta format database file"
    decoy: "In target protein identification mode, try to identity the decoy version of the selected target protein. Default is false."
    non_enzyme_trypsin: "0:Non enzyme, 1:Trypsin (default), 2:Trypsin (no P rule), 3:Arg-C, 4:Arg-C (no P rule), 5:Arg-N, 6:Glu-C, 7:Lys-C"
    frame_translate_sequence: "The frame to translate DNA sequence to protein. The right format is like this: \"1,2,3,4,5,6\",\"1,2,3\",\"1\". \"0\" means to keep the longest frame. In default, for each frame only the longest protein is used."
    fix_mod: "Fixed modification, the format is like : 1,2,3. Default is 6 (Carbamidomethylation(C)[57.02])"
    fragment_method: "1: CID/HCD (default), 2: ETD"
    hc: "When perform validation with unrestricted modification searching (UMS), whether or not to use more stringent criterion. TRUE: score(UMS)>=score(targetPSM); FALSE: score(UMS)>score(targetPSM), default"
    take_protein_dna: "Take protein, DNA or VCF as input"
    it_ol: "Fragment ion m/z tolerance, default is 0.6da"
    scoring_hyperscore_default: "Scoring method: 1=HyperScore (default), 2=MVH"
    max_charge: "The maximum charge to consider if the charge state is not available, default is 3"
    maxlength: "The maximum length of peptide to consider, default is 45"
    max_var: "Max number of variable modifications, default is 3"
    min_charge: "The minimum charge to consider if the charge state is not available, default is 2"
    minlength: "The minimum length of peptide to consider, default is 7"
    min_peaks: "Min peaks in spectrum, default is 10"
    min_score: "Minimum score to consider for peptide searching, default is 12"
    ms: "Spectrum file used for identification, mgf format"
    number_random_peptides: "The number of random peptides, default is 1000"
    output_dir: "Output dir"
    pep: "Peptide sequence which you want to search"
    prefix: "Output file prefix"
    print_ptm: "Print PTMs"
    input_type_proteindnavcfbedgtf: "Input type: 1=>protein,2=>DNA,3=>VCF,4=>BED,5=>GTF"
    tag: "A tag file"
    to_l: "Precursor ion m/z tolerance, default is 10"
    to_lu: "The unit of precursor ion m/z tolerance, default is ppm"
    tp: "Whether or not to perform target protein identification. If you set this parameter, then the input value for -i is a protein ID from the input reference protein database (-db)"
    um: "Validation with unrestricted modification searching"
    varmod: "Variable modification, the format is like : 1,2,3. Default is 117 (Oxidation(M)[15.99])"
  }
}