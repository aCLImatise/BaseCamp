class: CommandLineTool
id: pepquery.cwl
inputs:
- id: aa
  doc: Whether or not to consider aa substitution modifications when perform modification
    filtering. In default, don't consider.
  type: boolean
  inputBinding:
    prefix: -aa
- id: an_no
  doc: Annotation files folder for VCF/BED/GTF
  type: string
  inputBinding:
    prefix: -anno
- id: c
  doc: The max missed cleavages, default is 2
  type: string
  inputBinding:
    prefix: -c
- id: cpu
  doc: The number of cpus used, default is 1
  type: string
  inputBinding:
    prefix: -cpu
- id: db
  doc: Fasta format database file
  type: string
  inputBinding:
    prefix: -db
- id: decoy
  doc: In target protein identification mode, try to identity the decoy version of
    the selected target protein. Default is false.
  type: boolean
  inputBinding:
    prefix: -decoy
- id: e
  doc: 0:Non enzyme, 1:Trypsin (default), 2:Trypsin (no P rule), 3:Arg-C, 4:Arg-C
    (no P rule), 5:Arg-N, 6:Glu-C, 7:Lys-C
  type: string
  inputBinding:
    prefix: -e
- id: f
  doc: 'The frame to translate DNA sequence to protein. The right format is like this:
    "1,2,3,4,5,6","1,2,3","1". "0" means to keep the longest frame. In default, for
    each frame only the longest protein is used.'
  type: string
  inputBinding:
    prefix: -f
- id: fix_mod
  doc: 'Fixed modification, the format is like : 1,2,3. Default is 6 (Carbamidomethylation(C)[57.02])'
  type: string
  inputBinding:
    prefix: -fixMod
- id: fragment_method
  doc: '1: CID/HCD (default), 2: ETD'
  type: string
  inputBinding:
    prefix: -fragmentMethod
- id: hc
  doc: 'When perform validation with unrestricted modification searching (UMS), whether
    or not to use more stringent criterion. TRUE: score(UMS)>=score(targetPSM); FALSE:
    score(UMS)>score(targetPSM), default'
  type: boolean
  inputBinding:
    prefix: -hc
- id: i
  doc: Take protein, DNA or VCF as input
  type: string
  inputBinding:
    prefix: -i
- id: it_ol
  doc: Fragment ion m/z tolerance, default is 0.6da
  type: string
  inputBinding:
    prefix: -itol
- id: m
  doc: 'Scoring method: 1=HyperScore (default), 2=MVH'
  type: string
  inputBinding:
    prefix: -m
- id: max_charge
  doc: The maximum charge to consider if the charge state is not available, default
    is 3
  type: string
  inputBinding:
    prefix: -maxCharge
- id: maxlength
  doc: The maximum length of peptide to consider, default is 45
  type: string
  inputBinding:
    prefix: -maxLength
- id: max_var
  doc: Max number of variable modifications, default is 3
  type: string
  inputBinding:
    prefix: -maxVar
- id: min_charge
  doc: The minimum charge to consider if the charge state is not available, default
    is 2
  type: string
  inputBinding:
    prefix: -minCharge
- id: minlength
  doc: The minimum length of peptide to consider, default is 7
  type: string
  inputBinding:
    prefix: -minLength
- id: min_peaks
  doc: Min peaks in spectrum, default is 10
  type: string
  inputBinding:
    prefix: -minPeaks
- id: min_score
  doc: Minimum score to consider for peptide searching, default is 12
  type: string
  inputBinding:
    prefix: -minScore
- id: ms
  doc: Spectrum file used for identification, mgf format
  type: string
  inputBinding:
    prefix: -ms
- id: n
  doc: The number of random peptides, default is 1000
  type: string
  inputBinding:
    prefix: -n
- id: o
  doc: Output dir
  type: string
  inputBinding:
    prefix: -o
- id: pep
  doc: Peptide sequence which you want to search
  type: string
  inputBinding:
    prefix: -pep
- id: prefix
  doc: Output file prefix
  type: string
  inputBinding:
    prefix: -prefix
- id: print_ptm
  doc: Print PTMs
  type: boolean
  inputBinding:
    prefix: -printPTM
- id: t
  doc: 'Input type: 1=>protein,2=>DNA,3=>VCF,4=>BED,5=>GTF'
  type: string
  inputBinding:
    prefix: -t
- id: tag
  doc: A tag file
  type: string
  inputBinding:
    prefix: -tag
- id: to_l
  doc: Precursor ion m/z tolerance, default is 10
  type: string
  inputBinding:
    prefix: -tol
- id: to_lu
  doc: The unit of precursor ion m/z tolerance, default is ppm
  type: string
  inputBinding:
    prefix: -tolu
- id: tp
  doc: Whether or not to perform target protein identification. If you set this parameter,
    then the input value for -i is a protein ID from the input reference protein database
    (-db)
  type: boolean
  inputBinding:
    prefix: -tp
- id: um
  doc: Validation with unrestricted modification searching
  type: boolean
  inputBinding:
    prefix: -um
- id: varmod
  doc: 'Variable modification, the format is like : 1,2,3. Default is 117 (Oxidation(M)[15.99])'
  type: string
  inputBinding:
    prefix: -varMod
outputs: []
cwlVersion: v1.1
baseCommand:
- pepquery
