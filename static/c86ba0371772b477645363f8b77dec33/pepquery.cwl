class: CommandLineTool
id: pepquery.cwl
inputs:
- id: in_an_no
  doc: Annotation files folder for VCF/BED/GTF
  type: Directory?
  inputBinding:
    prefix: -anno
- id: in_max_missed_cleavages
  doc: The max missed cleavages, default is 2
  type: long?
  inputBinding:
    prefix: -c
- id: in_cpu
  doc: The number of cpus used, default is 1
  type: long?
  inputBinding:
    prefix: -cpu
- id: in_db
  doc: Fasta format database file
  type: File?
  inputBinding:
    prefix: -db
- id: in_decoy
  doc: "In target protein identification mode, try to\nidentity the decoy version\
    \ of the selected target\nprotein. Default is false."
  type: boolean?
  inputBinding:
    prefix: -decoy
- id: in_non_enzyme_trypsin
  doc: "0:Non enzyme, 1:Trypsin (default), 2:Trypsin (no\nP rule), 3:Arg-C, 4:Arg-C\
    \ (no P rule), 5:Arg-N,\n6:Glu-C, 7:Lys-C"
  type: long?
  inputBinding:
    prefix: -e
- id: in_frame_translate_sequence
  doc: "The frame to translate DNA sequence to protein.\nThe right format is like\
    \ this:\n\"1,2,3,4,5,6\",\"1,2,3\",\"1\". \"0\" means to keep the\nlongest frame.\
    \ In default, for each frame only\nthe longest protein is used."
  type: long?
  inputBinding:
    prefix: -f
- id: in_fix_mod
  doc: "Fixed modification, the format is like : 1,2,3.\nDefault is 6 (Carbamidomethylation(C)[57.02])"
  type: double?
  inputBinding:
    prefix: -fixMod
- id: in_fragment_method
  doc: '1: CID/HCD (default), 2: ETD'
  type: long?
  inputBinding:
    prefix: -fragmentMethod
- id: in_hc
  doc: "When perform validation with unrestricted\nmodification searching (UMS), whether\
    \ or not to\nuse more stringent criterion. TRUE:\nscore(UMS)>=score(targetPSM);\
    \ FALSE:\nscore(UMS)>score(targetPSM), default"
  type: boolean?
  inputBinding:
    prefix: -hc
- id: in_take_protein_dna
  doc: Take protein, DNA or VCF as input
  type: string?
  inputBinding:
    prefix: -i
- id: in_index_type
  doc: "1: index (1-based), 2: spectrum title in MGF\nfile. Default is 1."
  type: File?
  inputBinding:
    prefix: -indexType
- id: in_it_ol
  doc: Fragment ion m/z tolerance, default is 0.6da
  type: double?
  inputBinding:
    prefix: -itol
- id: in_scoring_method_hyperscore
  doc: 'Scoring method: 1=HyperScore (default), 2=MVH'
  type: long?
  inputBinding:
    prefix: -m
- id: in_max_charge
  doc: "The maximum charge to consider if the charge\nstate is not available, default\
    \ is 3"
  type: long?
  inputBinding:
    prefix: -maxCharge
- id: in_maxlength
  doc: "The maximum length of peptide to consider,\ndefault is 45"
  type: long?
  inputBinding:
    prefix: -maxLength
- id: in_max_var
  doc: "Max number of variable modifications, default is\n3"
  type: long?
  inputBinding:
    prefix: -maxVar
- id: in_min_charge
  doc: "The minimum charge to consider if the charge\nstate is not available, default\
    \ is 2"
  type: long?
  inputBinding:
    prefix: -minCharge
- id: in_minlength
  doc: "The minimum length of peptide to consider,\ndefault is 7"
  type: long?
  inputBinding:
    prefix: -minLength
- id: in_min_peaks
  doc: Min peaks in spectrum, default is 10
  type: long?
  inputBinding:
    prefix: -minPeaks
- id: in_min_score
  doc: "Minimum score to consider for peptide searching,\ndefault is 12"
  type: long?
  inputBinding:
    prefix: -minScore
- id: in_ms
  doc: Spectrum file used for identification, mgf format
  type: File?
  inputBinding:
    prefix: -ms
- id: in_number_random_peptides
  doc: The number of random peptides, default is 1000
  type: long?
  inputBinding:
    prefix: -n
- id: in_output_dir
  doc: Output dir
  type: string?
  inputBinding:
    prefix: -o
- id: in_pep
  doc: Peptide sequence which you want to search
  type: string?
  inputBinding:
    prefix: -pep
- id: in_prefix
  doc: Output file prefix
  type: File?
  inputBinding:
    prefix: -prefix
- id: in_print_ptm
  doc: Print PTMs
  type: boolean?
  inputBinding:
    prefix: -printPTM
- id: in_input_typeproteindnavcfbedgtf
  doc: "Input type:\n1=>protein,2=>DNA,3=>VCF,4=>BED,5=>GTF"
  type: long?
  inputBinding:
    prefix: -t
- id: in_tag
  doc: A tag file
  type: File?
  inputBinding:
    prefix: -tag
- id: in_to_l
  doc: Precursor ion m/z tolerance, default is 10
  type: long?
  inputBinding:
    prefix: -tol
- id: in_to_lu
  doc: "The unit of precursor ion m/z tolerance, default\nis ppm"
  type: string?
  inputBinding:
    prefix: -tolu
- id: in_tp
  doc: "Whether or not to perform target protein\nidentification. If you set this\
    \ parameter, then\nthe input value for -i is a protein ID from the\ninput reference\
    \ protein database (-db)"
  type: boolean?
  inputBinding:
    prefix: -tp
- id: in_um
  doc: Validation with unrestricted modification
  type: boolean?
  inputBinding:
    prefix: -um
- id: in_options
  doc: "-aa                     Whether or not to consider aa substitution\nmodifications\
    \ when perform modification\nfiltering. In default, don't consider."
  type: string
  inputBinding:
    position: 0
- id: in_searching
  doc: '-varMod <arg>           Variable modification, the format is like :'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Output file prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pepquery:1.6.2--1
cwlVersion: v1.1
baseCommand:
- pepquery
