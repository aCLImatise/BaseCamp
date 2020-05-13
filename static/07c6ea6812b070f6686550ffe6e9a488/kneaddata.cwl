class: CommandLineTool
id: kneaddata.cwl
inputs:
- id: verbose
  doc: additional output is printed
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: input FASTQ file (add a second argument instance to run with paired input files)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: directory to write output files
  type: string
  inputBinding:
    prefix: --output
- id: reference_db
  doc: location of reference database (additional arguments add databases)
  type: string
  inputBinding:
    prefix: --reference-db
- id: bypass_trim
  doc: bypass the trim step
  type: boolean
  inputBinding:
    prefix: --bypass-trim
- id: output_prefix
  doc: 'prefix for all output files [ DEFAULT : $SAMPLE_kneaddata ]'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: t
  doc: '<1>, --threads <1> number of threads [ Default : 1 ]'
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: '<1>, --processes <1> number of processes [ Default : 1 ]'
  type: boolean
  inputBinding:
    prefix: -p
- id: quality_scores
  doc: 'quality scores [ DEFAULT : phred33 ]'
  type: string
  inputBinding:
    prefix: --quality-scores
- id: run_bm_tagger
  doc: run BMTagger instead of Bowtie2 to identify contaminant reads
  type: boolean
  inputBinding:
    prefix: --run-bmtagger
- id: run_trf
  doc: run TRF to remove tandem repeats
  type: boolean
  inputBinding:
    prefix: --run-trf
- id: run_fast_qc_start
  doc: run fastqc at the beginning of the workflow
  type: boolean
  inputBinding:
    prefix: --run-fastqc-start
- id: run_fast_qc_end
  doc: run fastqc at the end of the workflow
  type: boolean
  inputBinding:
    prefix: --run-fastqc-end
- id: store_temp_output
  doc: 'store temp output files [ DEFAULT : temp output files are removed ]'
  type: boolean
  inputBinding:
    prefix: --store-temp-output
- id: remove_intermediate_output
  doc: 'remove intermediate output files [ DEFAULT : intermediate output files are
    stored ]'
  type: boolean
  inputBinding:
    prefix: --remove-intermediate-output
- id: cat_final_output
  doc: 'concatenate all final output files [ DEFAULT : final output is not concatenated
    ]'
  type: boolean
  inputBinding:
    prefix: --cat-final-output
- id: log_level
  doc: 'level of log messages [ DEFAULT : DEBUG ]'
  type: string
  inputBinding:
    prefix: --log-level
- id: log
  doc: 'log file [ DEFAULT : $OUTPUT_DIR/$SAMPLE_kneaddata.log ]'
  type: string
  inputBinding:
    prefix: --log
- id: trim_mo_matic
  doc: 'path to trimmomatic [ DEFAULT : $PATH ]'
  type: string
  inputBinding:
    prefix: --trimmomatic
- id: max_memory
  doc: 'max amount of memory [ DEFAULT : 500m ]'
  type: long
  inputBinding:
    prefix: --max-memory
- id: trim_mo_matic_options
  doc: 'options for trimmomatic [ DEFAULT : ILLUMINACLIP:/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:4:20
    MINLEN:50 ] MINLEN is set to 50 percent of total input read length'
  type: string
  inputBinding:
    prefix: --trimmomatic-options
- id: bowtie2
  doc: 'path to bowtie2 [ DEFAULT : $PATH ]'
  type: string
  inputBinding:
    prefix: --bowtie2
- id: bowtie2_options
  doc: 'options for bowtie2 [ DEFAULT : --very-sensitive ]'
  type: string
  inputBinding:
    prefix: --bowtie2-options
- id: no_discordant
  doc: 'do not include discordant alignments for pairs (ie one of the two pairs aligns)
    [ DEFAULT : Discordant alignments are included ]'
  type: boolean
  inputBinding:
    prefix: --no-discordant
- id: reorder
  doc: 'order the sequences in the same order as the input [ DEFAULT : With discordant
    paired alignments sequences are not ordered ]'
  type: boolean
  inputBinding:
    prefix: --reorder
- id: serial
  doc: filter the input in serial for multiple databases so a subset of reads are
    processed in each database search
  type: boolean
  inputBinding:
    prefix: --serial
- id: bm_tagger
  doc: 'path to BMTagger [ DEFAULT : $PATH ]'
  type: string
  inputBinding:
    prefix: --bmtagger
- id: trf
  doc: 'path to TRF [ DEFAULT : $PATH ]'
  type: string
  inputBinding:
    prefix: --trf
- id: match
  doc: 'matching weight [ DEFAULT : 2 ]'
  type: string
  inputBinding:
    prefix: --match
- id: mismatch
  doc: 'mismatching penalty [ DEFAULT : 7 ]'
  type: string
  inputBinding:
    prefix: --mismatch
- id: delta
  doc: 'indel penalty [ DEFAULT : 7 ]'
  type: string
  inputBinding:
    prefix: --delta
- id: pm
  doc: 'match probability [ DEFAULT : 80 ]'
  type: string
  inputBinding:
    prefix: --pm
- id: pi
  doc: 'indel probability [ DEFAULT : 10 ]'
  type: string
  inputBinding:
    prefix: --pi
- id: min_score
  doc: 'minimum alignment score to report [ DEFAULT : 50 ]'
  type: long
  inputBinding:
    prefix: --minscore
- id: max_period
  doc: 'maximum period size to report [ DEFAULT : 500 ]'
  type: long
  inputBinding:
    prefix: --maxperiod
- id: fast_qc
  doc: 'path to fastqc [ DEFAULT : $PATH ]'
  type: string
  inputBinding:
    prefix: --fastqc
outputs: []
cwlVersion: v1.1
baseCommand:
- kneaddata
