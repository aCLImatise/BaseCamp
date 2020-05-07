class: CommandLineTool
id: lohhla.cwl
inputs:
- id: patient_id
  doc: patient ID
  type: string
  inputBinding:
    prefix: --patientId
- id: output_dir
  doc: location of output directory
  type: string
  inputBinding:
    prefix: --outputDir
- id: normal_bam_file
  doc: normal BAM file can be FALSE to run without normal sample
  type: string
  inputBinding:
    prefix: --normalBAMfile
- id: bam_dir
  doc: location of all BAMs to test
  type: string
  inputBinding:
    prefix: --BAMDir
- id: hla_path
  doc: location to patient HLA calls
  type: string
  inputBinding:
    prefix: --hlaPath
- id: hla_fast_a_loc
  doc: location of HLA FASTA [default= ~/lohhla/data/hla_all.fasta]
  type: string
  inputBinding:
    prefix: --HLAfastaLoc
- id: copy_num_loc
  doc: location to patient purity and ploidy output can be FALSE to only estimate
    allelic imbalance
  type: string
  inputBinding:
    prefix: --CopyNumLoc
- id: override_dir
  doc: location of flagstat information if already run [default= FALSE]
  type: string
  inputBinding:
    prefix: --overrideDir
- id: min_coverage_filter
  doc: minimum coverage at mismatch site [default= 30]
  type: string
  inputBinding:
    prefix: --minCoverageFilter
- id: km_er_size
  doc: size of kmers to fish with [default= 50]
  type: string
  inputBinding:
    prefix: --kmerSize
- id: num_mismatch
  doc: number of mismatches allowed in read to map to HLA allele [default= 1]
  type: string
  inputBinding:
    prefix: --numMisMatch
- id: mapping_step
  doc: does mapping to HLA alleles need to be done [default= TRUE]
  type: string
  inputBinding:
    prefix: --mappingStep
- id: fishing_step
  doc: if mapping is performed, also look for fished reads matching kmers of size
    kmerSize [default= TRUE]
  type: string
  inputBinding:
    prefix: --fishingStep
- id: plotting_step
  doc: are plots made [default= TRUE]
  type: string
  inputBinding:
    prefix: --plottingStep
- id: coverage_step
  doc: are coverage differences analyzed [default= TRUE]
  type: string
  inputBinding:
    prefix: --coverageStep
- id: cleanup
  doc: remove temporary files [default= TRUE]
  type: string
  inputBinding:
    prefix: --cleanUp
- id: novo_dir
  doc: path to novoalign executable [default= ]
  type: string
  inputBinding:
    prefix: --novoDir
- id: g_atk_dir
  doc: path to GATK executable [default= ]
  type: string
  inputBinding:
    prefix: --gatkDir
- id: hla_exon_loc
  doc: HLA exon boundaries for plotting [default= ~/lohhla/data/hla.dat]
  type: string
  inputBinding:
    prefix: --HLAexonLoc
- id: ignore_warnings
  doc: continue running with warnings [default= TRUE]
  type: string
  inputBinding:
    prefix: --ignoreWarnings
outputs: []
cwlVersion: v1.1
baseCommand:
- lohhla
