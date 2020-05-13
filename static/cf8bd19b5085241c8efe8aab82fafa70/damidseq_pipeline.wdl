version 1.0

task DamidseqPipeline {
  input {
    Boolean bamBamFiles
    Boolean bedBedToolsPath
    Boolean binsBins
    Boolean bowtieBowtie
    Boolean bowtie2Bowtie2GenomeDir
    Boolean bowtie2Bowtie2Path
    Boolean damDam
    Boolean extendExtendReads
    Boolean extensionExtensionMethod
    Boolean fullFullDataFiles
    Boolean gatcGatcFragFile
    Boolean justJustAlign
    Boolean kdeKdePlot
    Boolean keepKeepSam
    Boolean lenLen
    Boolean loadLoadDefaults
    Boolean maxMaxNormValue
    Boolean methodMethodSubtract
    Boolean minMinNormValue
    Boolean noNoFileFilters
    Boolean normNormMethod
    Boolean normNormOverride
    Boolean normNormSteps
    Boolean onlyOnlySam
    Boolean outOutName
    Boolean outputOutputFormat
    Boolean psPsFactor
    Boolean pseudoPseudoCounts
    Boolean qQ
    Boolean qscore1maxQscore1max
    Boolean qscore1minQscore1min
    Boolean qscore2maxQscore2max
    Boolean resetResetDefaults
    Boolean samSamToolsPath
    Boolean saveSaveDefaults
    Boolean threadsThreads
  }
  command <<<
    damidseq_pipeline \
      ~{true="--bamfiles" false="" bamBamFiles} \
      ~{true="--bedtools_path" false="" bedBedToolsPath} \
      ~{true="--bins" false="" binsBins} \
      ~{true="--bowtie" false="" bowtieBowtie} \
      ~{true="--bowtie2_genome_dir" false="" bowtie2Bowtie2GenomeDir} \
      ~{true="--bowtie2_path" false="" bowtie2Bowtie2Path} \
      ~{true="--dam" false="" damDam} \
      ~{true="--extend_reads" false="" extendExtendReads} \
      ~{true="--extension_method" false="" extensionExtensionMethod} \
      ~{true="--full_data_files" false="" fullFullDataFiles} \
      ~{true="--gatc_frag_file" false="" gatcGatcFragFile} \
      ~{true="--just_align" false="" justJustAlign} \
      ~{true="--kde_plot" false="" kdeKdePlot} \
      ~{true="--keep_sam" false="" keepKeepSam} \
      ~{true="--len" false="" lenLen} \
      ~{true="--load_defaults" false="" loadLoadDefaults} \
      ~{true="--max_norm_value" false="" maxMaxNormValue} \
      ~{true="--method_subtract" false="" methodMethodSubtract} \
      ~{true="--min_norm_value" false="" minMinNormValue} \
      ~{true="--no_file_filters" false="" noNoFileFilters} \
      ~{true="--norm_method" false="" normNormMethod} \
      ~{true="--norm_override" false="" normNormOverride} \
      ~{true="--norm_steps" false="" normNormSteps} \
      ~{true="--only_sam" false="" onlyOnlySam} \
      ~{true="--out_name" false="" outOutName} \
      ~{true="--output_format" false="" outputOutputFormat} \
      ~{true="--ps_factor" false="" psPsFactor} \
      ~{true="--pseudocounts" false="" pseudoPseudoCounts} \
      ~{true="--q" false="" qQ} \
      ~{true="--qscore1max" false="" qscore1maxQscore1max} \
      ~{true="--qscore1min" false="" qscore1minQscore1min} \
      ~{true="--qscore2max" false="" qscore2maxQscore2max} \
      ~{true="--reset_defaults" false="" resetResetDefaults} \
      ~{true="--samtools_path" false="" samSamToolsPath} \
      ~{true="--save_defaults" false="" saveSaveDefaults} \
      ~{true="--threads" false="" threadsThreads}
  >>>
}