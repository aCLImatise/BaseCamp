class: CommandLineTool
id: sistr.cwl
inputs:
- id: in_genomename__inputfastagenomename
  doc: "genome_name, --input-fasta-genome-name fasta_path genome_name\nfasta file\
    \ path to genome name pair"
  type: File
  inputBinding:
    prefix: -i
- id: in_output_format
  doc: Output format (json, csv, pickle)
  type: string
  inputBinding:
    prefix: --output-format
- id: in_output_prediction
  doc: SISTR serovar prediction output path
  type: File
  inputBinding:
    prefix: --output-prediction
- id: in_more_results
  doc: "Output more detailed results (-M) and all antigen\nsearch blastn results (-MM)"
  type: boolean
  inputBinding:
    prefix: --more-results
- id: in_cgm_lst_profiles
  doc: "Output CSV file destination for cgMLST allelic\nprofiles"
  type: File
  inputBinding:
    prefix: --cgmlst-profiles
- id: in_novel_alleles
  doc: "Output FASTA file destination of novel cgMLST alleles\nfrom input genomes"
  type: File
  inputBinding:
    prefix: --novel-alleles
- id: in_alleles_output
  doc: Output path of allele sequences and info to JSON
  type: File
  inputBinding:
    prefix: --alleles-output
- id: in_tmp_dir
  doc: "Base temporary working directory for intermediate\nanalysis files."
  type: Directory
  inputBinding:
    prefix: --tmp-dir
- id: in_keep_tmp
  doc: Keep temporary analysis files.
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: in_use_full_cgm_lst_db
  doc: "Use the full set of cgMLST alleles which can include\nhighly similar alleles.\
    \ By default the smaller\n\"centroid\" alleles or representative alleles are used\n\
    for each marker."
  type: boolean
  inputBinding:
    prefix: --use-full-cgmlst-db
- id: in_no_cgm_lst
  doc: Do not run cgMLST serovar prediction
  type: boolean
  inputBinding:
    prefix: --no-cgmlst
- id: in_run_mash
  doc: "Determine Mash MinHash genomic distances to Salmonella\ngenomes with trusted\
    \ serovar designations. Mash binary\nmust be in accessible via $PATH (e.g. /usr/bin)."
  type: boolean
  inputBinding:
    prefix: --run-mash
- id: in_qc
  doc: "Perform basic QC to provide level of confidence in\nserovar prediction results."
  type: boolean
  inputBinding:
    prefix: --qc
- id: in_threads
  doc: Number of parallel threads to run sistr_cmd analysis.
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: "Logging verbosity level (-v == show warnings; -vvv ==\nshow debug info)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_si_str_cmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prediction
  doc: SISTR serovar prediction output path
  type: File
  outputBinding:
    glob: $(inputs.in_output_prediction)
- id: out_cgm_lst_profiles
  doc: "Output CSV file destination for cgMLST allelic\nprofiles"
  type: File
  outputBinding:
    glob: $(inputs.in_cgm_lst_profiles)
- id: out_alleles_output
  doc: Output path of allele sequences and info to JSON
  type: File
  outputBinding:
    glob: $(inputs.in_alleles_output)
cwlVersion: v1.1
baseCommand:
- sistr
