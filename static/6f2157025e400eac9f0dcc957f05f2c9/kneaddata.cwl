class: CommandLineTool
id: kneaddata.cwl
inputs:
- id: in_verbose
  doc: additional output is printed
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: input FASTQ file (add a second argument instance to run with paired input files)
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: directory to write output files
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_reference_db
  doc: location of reference database (additional arguments add databases)
  type: string?
  inputBinding:
    prefix: --reference-db
- id: in_bypass_trim
  doc: bypass the trim step
  type: boolean?
  inputBinding:
    prefix: --bypass-trim
- id: in_output_prefix
  doc: "prefix for all output files\n[ DEFAULT : $SAMPLE_kneaddata ]"
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_threads
  doc: "number of threads\n[ Default : 1 ]"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_processes
  doc: "number of processes\n[ Default : 1 ]"
  type: long?
  inputBinding:
    prefix: --processes
- id: in_quality_scores
  doc: "quality scores\n[ DEFAULT : phred33 ]"
  type: string?
  inputBinding:
    prefix: --quality-scores
- id: in_run_bm_tagger
  doc: run BMTagger instead of Bowtie2 to identify contaminant reads
  type: boolean?
  inputBinding:
    prefix: --run-bmtagger
- id: in_run_trf
  doc: run TRF to remove tandem repeats
  type: boolean?
  inputBinding:
    prefix: --run-trf
- id: in_run_fast_qc_start
  doc: run fastqc at the beginning of the workflow
  type: boolean?
  inputBinding:
    prefix: --run-fastqc-start
- id: in_run_fast_qc_end
  doc: run fastqc at the end of the workflow
  type: boolean?
  inputBinding:
    prefix: --run-fastqc-end
- id: in_store_temp_output
  doc: "store temp output files\n[ DEFAULT : temp output files are removed ]"
  type: boolean?
  inputBinding:
    prefix: --store-temp-output
- id: in_remove_intermediate_output
  doc: "remove intermediate output files\n[ DEFAULT : intermediate output files are\
    \ stored ]"
  type: boolean?
  inputBinding:
    prefix: --remove-intermediate-output
- id: in_cat_final_output
  doc: "concatenate all final output files\n[ DEFAULT : final output is not concatenated\
    \ ]"
  type: boolean?
  inputBinding:
    prefix: --cat-final-output
- id: in_log_level
  doc: "level of log messages\n[ DEFAULT : DEBUG ]"
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_log
  doc: "log file\n[ DEFAULT : $OUTPUT_DIR/$SAMPLE_kneaddata.log ]"
  type: File?
  inputBinding:
    prefix: --log
- id: in_trim_mo_matic
  doc: "path to trimmomatic\n[ DEFAULT : $PATH ]"
  type: File?
  inputBinding:
    prefix: --trimmomatic
- id: in_max_memory
  doc: "max amount of memory\n[ DEFAULT : 500m ]"
  type: long?
  inputBinding:
    prefix: --max-memory
- id: in_trim_mo_matic_options
  doc: "options for trimmomatic\n[ DEFAULT : ILLUMINACLIP:/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:4:20\
    \ MINLEN:50 ]\nMINLEN is set to 50 percent of total input read length"
  type: long?
  inputBinding:
    prefix: --trimmomatic-options
- id: in_bowtie_two
  doc: "path to bowtie2\n[ DEFAULT : $PATH ]"
  type: long?
  inputBinding:
    prefix: --bowtie2
- id: in_bowtie_two_options
  doc: "options for bowtie2\n[ DEFAULT : --very-sensitive ]"
  type: long?
  inputBinding:
    prefix: --bowtie2-options
- id: in_no_discordant
  doc: "do not include discordant alignments for pairs (ie one of the two pairs aligns)\n\
    [ DEFAULT : Discordant alignments are included ]"
  type: boolean?
  inputBinding:
    prefix: --no-discordant
- id: in_reorder
  doc: "order the sequences in the same order as the input\n[ DEFAULT : With discordant\
    \ paired alignments sequences are not ordered ]"
  type: boolean?
  inputBinding:
    prefix: --reorder
- id: in_serial
  doc: filter the input in serial for multiple databases so a subset of reads are
    processed in each database search
  type: boolean?
  inputBinding:
    prefix: --serial
- id: in_bm_tagger
  doc: "path to BMTagger\n[ DEFAULT : $PATH ]"
  type: File?
  inputBinding:
    prefix: --bmtagger
- id: in_trf
  doc: "path to TRF\n[ DEFAULT : $PATH ]"
  type: File?
  inputBinding:
    prefix: --trf
- id: in_match
  doc: "matching weight\n[ DEFAULT : 2 ]"
  type: long?
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: "mismatching penalty\n[ DEFAULT : 7 ]"
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_delta
  doc: "indel penalty\n[ DEFAULT : 7 ]"
  type: long?
  inputBinding:
    prefix: --delta
- id: in_pm
  doc: "match probability\n[ DEFAULT : 80 ]"
  type: long?
  inputBinding:
    prefix: --pm
- id: in_pi
  doc: "indel probability\n[ DEFAULT : 10 ]"
  type: long?
  inputBinding:
    prefix: --pi
- id: in_min_score
  doc: "minimum alignment score to report\n[ DEFAULT : 50 ]"
  type: long?
  inputBinding:
    prefix: --minscore
- id: in_max_period
  doc: "maximum period size to report\n[ DEFAULT : 500 ]"
  type: long?
  inputBinding:
    prefix: --maxperiod
- id: in_fast_qc
  doc: "path to fastqc\n[ DEFAULT : $PATH ]\n"
  type: File?
  inputBinding:
    prefix: --fastqc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: directory to write output files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- kneaddata
