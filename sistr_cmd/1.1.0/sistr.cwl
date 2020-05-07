class: CommandLineTool
id: sistr.cwl
inputs:
- id: f
  doc: Input genome FASTA file
  type: string
  inputBinding:
    position: 0
- id: i
  doc: genome_name, --input-fasta-genome-name fasta_path genome_name fasta file path
    to genome name pair
  type: string
  inputBinding:
    prefix: -i
- id: output_format
  doc: Output format (json, csv, pickle)
  type: string
  inputBinding:
    prefix: --output-format
- id: output_prediction
  doc: SISTR serovar prediction output path
  type: string
  inputBinding:
    prefix: --output-prediction
- id: more_results
  doc: Output more detailed results (-M) and all antigen search blastn results (-MM)
  type: boolean
  inputBinding:
    prefix: --more-results
- id: cgm_lst_profiles
  doc: Output CSV file destination for cgMLST allelic profiles
  type: string
  inputBinding:
    prefix: --cgmlst-profiles
- id: novel_alleles
  doc: Output FASTA file destination of novel cgMLST alleles from input genomes
  type: string
  inputBinding:
    prefix: --novel-alleles
- id: alleles_output
  doc: Output path of allele sequences and info to JSON
  type: string
  inputBinding:
    prefix: --alleles-output
- id: tmp_dir
  doc: Base temporary working directory for intermediate analysis files.
  type: string
  inputBinding:
    prefix: --tmp-dir
- id: keep_tmp
  doc: Keep temporary analysis files.
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: use_full_cgm_lst_db
  doc: Use the full set of cgMLST alleles which can include highly similar alleles.
    By default the smaller "centroid" alleles or representative alleles are used for
    each marker.
  type: boolean
  inputBinding:
    prefix: --use-full-cgmlst-db
- id: no_cgm_lst
  doc: Do not run cgMLST serovar prediction
  type: boolean
  inputBinding:
    prefix: --no-cgmlst
- id: run_mash
  doc: Determine Mash MinHash genomic distances to Salmonella genomes with trusted
    serovar designations. Mash binary must be in accessible via $PATH (e.g. /usr/bin).
  type: boolean
  inputBinding:
    prefix: --run-mash
- id: qc
  doc: Perform basic QC to provide level of confidence in serovar prediction results.
  type: boolean
  inputBinding:
    prefix: --qc
- id: threads
  doc: Number of parallel threads to run sistr_cmd analysis.
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: Logging verbosity level (-v == show warnings; -vvv == show debug info)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- sistr
