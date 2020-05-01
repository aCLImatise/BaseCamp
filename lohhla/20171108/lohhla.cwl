#!/usr/bin/env cwl-runner

baseCommand:
- lohhla
class: CommandLineTool
cwlVersion: v1.0
id: lohhla
inputs:
- doc: patient ID
  id: patient_id
  inputBinding:
    prefix: --patientId
  type: string
- doc: location of output directory
  id: output_dir
  inputBinding:
    prefix: --outputDir
  type: string
- doc: normal BAM file can be FALSE to run without normal sample
  id: normal_bam_file
  inputBinding:
    prefix: --normalBAMfile
  type: string
- doc: location of all BAMs to test
  id: bam_dir
  inputBinding:
    prefix: --BAMDir
  type: string
- doc: location to patient HLA calls
  id: hla_path
  inputBinding:
    prefix: --hlaPath
  type: string
- doc: location of HLA FASTA [default= ~/lohhla/data/hla_all.fasta]
  id: hla_fast_a_loc
  inputBinding:
    prefix: --HLAfastaLoc
  type: string
- doc: location to patient purity and ploidy output can be FALSE to only estimate
    allelic imbalance
  id: copy_num_loc
  inputBinding:
    prefix: --CopyNumLoc
  type: string
- doc: location of flagstat information if already run [default= FALSE]
  id: override_dir
  inputBinding:
    prefix: --overrideDir
  type: string
- doc: minimum coverage at mismatch site [default= 30]
  id: min_coverage_filter
  inputBinding:
    prefix: --minCoverageFilter
  type: string
- doc: size of kmers to fish with [default= 50]
  id: km_er_size
  inputBinding:
    prefix: --kmerSize
  type: string
- doc: number of mismatches allowed in read to map to HLA allele [default= 1]
  id: num_mismatch
  inputBinding:
    prefix: --numMisMatch
  type: string
- doc: does mapping to HLA alleles need to be done [default= TRUE]
  id: mapping_step
  inputBinding:
    prefix: --mappingStep
  type: string
- doc: if mapping is performed, also look for fished reads matching kmers of size
    kmerSize [default= TRUE]
  id: fishing_step
  inputBinding:
    prefix: --fishingStep
  type: string
- doc: are plots made [default= TRUE]
  id: plotting_step
  inputBinding:
    prefix: --plottingStep
  type: string
- doc: are coverage differences analyzed [default= TRUE]
  id: coverage_step
  inputBinding:
    prefix: --coverageStep
  type: string
- doc: remove temporary files [default= TRUE]
  id: cleanup
  inputBinding:
    prefix: --cleanUp
  type: string
- doc: path to novoalign executable [default= ]
  id: novo_dir
  inputBinding:
    prefix: --novoDir
  type: string
- doc: path to GATK executable [default= ]
  id: g_atk_dir
  inputBinding:
    prefix: --gatkDir
  type: string
- doc: HLA exon boundaries for plotting [default= ~/lohhla/data/hla.dat]
  id: hla_exon_loc
  inputBinding:
    prefix: --HLAexonLoc
  type: string
- doc: continue running with warnings [default= TRUE]
  id: ignore_warnings
  inputBinding:
    prefix: --ignoreWarnings
  type: string
