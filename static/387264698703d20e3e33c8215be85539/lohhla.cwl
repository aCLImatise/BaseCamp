class: CommandLineTool
id: lohhla.cwl
inputs:
- id: in_patient_id
  doc: patient ID
  type: string
  inputBinding:
    prefix: --patientId
- id: in_output_dir
  doc: location of output directory
  type: Directory
  inputBinding:
    prefix: --outputDir
- id: in_normal_bam_file
  doc: "normal BAM file\ncan be FALSE to run without normal sample"
  type: File
  inputBinding:
    prefix: --normalBAMfile
- id: in_bam_dir
  doc: location of all BAMs to test
  type: string
  inputBinding:
    prefix: --BAMDir
- id: in_hla_path
  doc: location to patient HLA calls
  type: string
  inputBinding:
    prefix: --hlaPath
- id: in_hla_fast_a_loc
  doc: location of HLA FASTA [default= ~/lohhla/data/hla_all.fasta]
  type: string
  inputBinding:
    prefix: --HLAfastaLoc
- id: in_copy_num_loc
  doc: "location to patient purity and ploidy output\ncan be FALSE to only estimate\
    \ allelic imbalance"
  type: string
  inputBinding:
    prefix: --CopyNumLoc
- id: in_override_dir
  doc: location of flagstat information if already run [default= FALSE]
  type: string
  inputBinding:
    prefix: --overrideDir
- id: in_min_coverage_filter
  doc: minimum coverage at mismatch site [default= 30]
  type: long
  inputBinding:
    prefix: --minCoverageFilter
- id: in_km_er_size
  doc: size of kmers to fish with [default= 50]
  type: long
  inputBinding:
    prefix: --kmerSize
- id: in_num_mismatch
  doc: number of mismatches allowed in read to map to HLA allele [default= 1]
  type: long
  inputBinding:
    prefix: --numMisMatch
- id: in_mapping_step
  doc: does mapping to HLA alleles need to be done [default= TRUE]
  type: string
  inputBinding:
    prefix: --mappingStep
- id: in_fishing_step
  doc: if mapping is performed, also look for fished reads matching kmers of size
    kmerSize [default= TRUE]
  type: long
  inputBinding:
    prefix: --fishingStep
- id: in_plotting_step
  doc: are plots made [default= TRUE]
  type: string
  inputBinding:
    prefix: --plottingStep
- id: in_coverage_step
  doc: are coverage differences analyzed [default= TRUE]
  type: string
  inputBinding:
    prefix: --coverageStep
- id: in_cleanup
  doc: remove temporary files [default= TRUE]
  type: string
  inputBinding:
    prefix: --cleanUp
- id: in_novo_dir
  doc: path to novoalign executable [default= ]
  type: File
  inputBinding:
    prefix: --novoDir
- id: in_g_atk_dir
  doc: path to GATK executable [default= ]
  type: File
  inputBinding:
    prefix: --gatkDir
- id: in_hla_exon_loc
  doc: HLA exon boundaries for plotting [default= ~/lohhla/data/hla.dat]
  type: string
  inputBinding:
    prefix: --HLAexonLoc
- id: in_ignore_warnings
  doc: continue running with warnings [default= TRUE]
  type: string
  inputBinding:
    prefix: --ignoreWarnings
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: location of output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- lohhla
