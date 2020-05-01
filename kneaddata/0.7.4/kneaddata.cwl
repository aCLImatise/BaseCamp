#!/usr/bin/env cwl-runner

baseCommand:
- kneaddata
class: CommandLineTool
cwlVersion: v1.0
id: kneaddata
inputs:
- doc: additional output is printed
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: input FASTQ file (add a second argument instance to run with paired input files)
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: directory to write output files
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: location of reference database (additional arguments add databases)
  id: reference_db
  inputBinding:
    prefix: --reference-db
  type: string
- doc: bypass the trim step
  id: bypass_trim
  inputBinding:
    prefix: --bypass-trim
  type: boolean
- doc: 'prefix for all output files [ DEFAULT : $SAMPLE_kneaddata ]'
  id: output_prefix
  inputBinding:
    prefix: --output-prefix
  type: string
- doc: '<1>, --threads <1> number of threads [ Default : 1 ]'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '<1>, --processes <1> number of processes [ Default : 1 ]'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: 'quality scores [ DEFAULT : phred33 ]'
  id: quality_scores
  inputBinding:
    prefix: --quality-scores
  type: string
- doc: run BMTagger instead of Bowtie2 to identify contaminant reads
  id: run_bm_tagger
  inputBinding:
    prefix: --run-bmtagger
  type: boolean
- doc: run TRF to remove tandem repeats
  id: run_trf
  inputBinding:
    prefix: --run-trf
  type: boolean
- doc: run fastqc at the beginning of the workflow
  id: run_fast_qc_start
  inputBinding:
    prefix: --run-fastqc-start
  type: boolean
- doc: run fastqc at the end of the workflow
  id: run_fast_qc_end
  inputBinding:
    prefix: --run-fastqc-end
  type: boolean
- doc: 'store temp output files [ DEFAULT : temp output files are removed ]'
  id: store_temp_output
  inputBinding:
    prefix: --store-temp-output
  type: boolean
- doc: 'remove intermediate output files [ DEFAULT : intermediate output files are
    stored ]'
  id: remove_intermediate_output
  inputBinding:
    prefix: --remove-intermediate-output
  type: boolean
- doc: 'concatenate all final output files [ DEFAULT : final output is not concatenated
    ]'
  id: cat_final_output
  inputBinding:
    prefix: --cat-final-output
  type: boolean
- doc: 'level of log messages [ DEFAULT : DEBUG ]'
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'log file [ DEFAULT : $OUTPUT_DIR/$SAMPLE_kneaddata.log ]'
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: 'path to trimmomatic [ DEFAULT : $PATH ]'
  id: trim_mo_matic
  inputBinding:
    prefix: --trimmomatic
  type: string
- doc: 'max amount of memory [ DEFAULT : 500m ]'
  id: max_memory
  inputBinding:
    prefix: --max-memory
  type: long
- doc: 'options for trimmomatic [ DEFAULT : ILLUMINACLIP:/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:4:20
    MINLEN:50 ] MINLEN is set to 50 percent of total input read length'
  id: trim_mo_matic_options
  inputBinding:
    prefix: --trimmomatic-options
  type: string
- doc: 'path to bowtie2 [ DEFAULT : $PATH ]'
  id: bowtie2
  inputBinding:
    prefix: --bowtie2
  type: string
- doc: 'options for bowtie2 [ DEFAULT : --very-sensitive ]'
  id: bowtie2_options
  inputBinding:
    prefix: --bowtie2-options
  type: string
- doc: 'do not include discordant alignments for pairs (ie one of the two pairs aligns)
    [ DEFAULT : Discordant alignments are included ]'
  id: no_discordant
  inputBinding:
    prefix: --no-discordant
  type: boolean
- doc: 'order the sequences in the same order as the input [ DEFAULT : With discordant
    paired alignments sequences are not ordered ]'
  id: reorder
  inputBinding:
    prefix: --reorder
  type: boolean
- doc: filter the input in serial for multiple databases so a subset of reads are
    processed in each database search
  id: serial
  inputBinding:
    prefix: --serial
  type: boolean
- doc: 'path to BMTagger [ DEFAULT : $PATH ]'
  id: bm_tagger
  inputBinding:
    prefix: --bmtagger
  type: string
- doc: 'path to TRF [ DEFAULT : $PATH ]'
  id: trf
  inputBinding:
    prefix: --trf
  type: string
- doc: 'matching weight [ DEFAULT : 2 ]'
  id: match
  inputBinding:
    prefix: --match
  type: string
- doc: 'mismatching penalty [ DEFAULT : 7 ]'
  id: mismatch
  inputBinding:
    prefix: --mismatch
  type: string
- doc: 'indel penalty [ DEFAULT : 7 ]'
  id: delta
  inputBinding:
    prefix: --delta
  type: string
- doc: 'match probability [ DEFAULT : 80 ]'
  id: pm
  inputBinding:
    prefix: --pm
  type: string
- doc: 'indel probability [ DEFAULT : 10 ]'
  id: pi
  inputBinding:
    prefix: --pi
  type: string
- doc: 'minimum alignment score to report [ DEFAULT : 50 ]'
  id: min_score
  inputBinding:
    prefix: --minscore
  type: long
- doc: 'maximum period size to report [ DEFAULT : 500 ]'
  id: max_period
  inputBinding:
    prefix: --maxperiod
  type: long
- doc: 'path to fastqc [ DEFAULT : $PATH ]'
  id: fast_qc
  inputBinding:
    prefix: --fastqc
  type: string
