version 1.0

task Metaphlan2.py {
  input {
    Boolean inputInputType
    String inputInputType
    String mpaMpaPkl
    Boolean forceForce
    String bowtie2dbBowtie2db
    String indexIndex
    String bt2Bt2Ps
    String bowtie2Bowtie2Exe
    String bowtie2Bowtie2Build
    File bowtie2outBowtie2out
    Int minMinMapqVal
    Boolean noNoMap
    Boolean tmpTmpDir
    String taxTaxLev
    Boolean minMinCuLen
    Boolean minMinAlignmentLen
    Boolean addAddViruses
    Boolean ignoreIgnoreEukaryotes
    Boolean ignoreIgnoreBacteria
    Boolean ignoreIgnoreArchaea
    Boolean statStatQ
    Boolean percPercNonzero
    String ignoreIgnoreMarkers
    Boolean avoidAvoidDiSqm
    Boolean statStat
    String tT
    String nNReads
    String presPresTh
    Boolean cladeClade
    Boolean minMinAb
    String oO
    String sampleSampleIdKey
    Boolean useUseGroupRepresentative
    String sampleSampleId
    String samSamOut
    Boolean legacyLegacyOutput
    Boolean camiCamiFormatOutput
    Boolean unknownUnknownEstimation
    String biomBiomOutputFile
    String metadataMetadataDelimiterChar
    String nprocNproc
    Boolean installInstall
    Boolean forceForceDownload
    String readReadMinLen
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    metaphlan2.py \
      ~{inputInputFile} \
      ~{true="--input_type" false="" inputInputType} \
      ~{if defined(inputInputType) then ("--input_type " +  '"' + inputInputType + '"') else ""} \
      ~{if defined(mpaMpaPkl) then ("--mpa_pkl " +  '"' + mpaMpaPkl + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(bowtie2dbBowtie2db) then ("--bowtie2db " +  '"' + bowtie2dbBowtie2db + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(bt2Bt2Ps) then ("--bt2_ps " +  '"' + bt2Bt2Ps + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Exe) then ("--bowtie2_exe " +  '"' + bowtie2Bowtie2Exe + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Build) then ("--bowtie2_build " +  '"' + bowtie2Bowtie2Build + '"') else ""} \
      ~{if defined(bowtie2outBowtie2out) then ("--bowtie2out " +  '"' + bowtie2outBowtie2out + '"') else ""} \
      ~{if defined(minMinMapqVal) then ("--min_mapq_val " +  '"' + minMinMapqVal + '"') else ""} \
      ~{true="--no_map" false="" noNoMap} \
      ~{true="--tmp_dir" false="" tmpTmpDir} \
      ~{if defined(taxTaxLev) then ("--tax_lev " +  '"' + taxTaxLev + '"') else ""} \
      ~{true="--min_cu_len" false="" minMinCuLen} \
      ~{true="--min_alignment_len" false="" minMinAlignmentLen} \
      ~{true="--add_viruses" false="" addAddViruses} \
      ~{true="--ignore_eukaryotes" false="" ignoreIgnoreEukaryotes} \
      ~{true="--ignore_bacteria" false="" ignoreIgnoreBacteria} \
      ~{true="--ignore_archaea" false="" ignoreIgnoreArchaea} \
      ~{true="--stat_q" false="" statStatQ} \
      ~{true="--perc_nonzero" false="" percPercNonzero} \
      ~{if defined(ignoreIgnoreMarkers) then ("--ignore_markers " +  '"' + ignoreIgnoreMarkers + '"') else ""} \
      ~{true="--avoid_disqm" false="" avoidAvoidDiSqm} \
      ~{true="--stat" false="" statStat} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(nNReads) then ("--nreads " +  '"' + nNReads + '"') else ""} \
      ~{if defined(presPresTh) then ("--pres_th " +  '"' + presPresTh + '"') else ""} \
      ~{true="--clade" false="" cladeClade} \
      ~{true="--min_ab" false="" minMinAb} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sampleSampleIdKey) then ("--sample_id_key " +  '"' + sampleSampleIdKey + '"') else ""} \
      ~{true="--use_group_representative" false="" useUseGroupRepresentative} \
      ~{if defined(sampleSampleId) then ("--sample_id " +  '"' + sampleSampleId + '"') else ""} \
      ~{if defined(samSamOut) then ("--samout " +  '"' + samSamOut + '"') else ""} \
      ~{true="--legacy-output" false="" legacyLegacyOutput} \
      ~{true="--CAMI_format_output" false="" camiCamiFormatOutput} \
      ~{true="--unknown_estimation" false="" unknownUnknownEstimation} \
      ~{if defined(biomBiomOutputFile) then ("--biom_output_file " +  '"' + biomBiomOutputFile + '"') else ""} \
      ~{if defined(metadataMetadataDelimiterChar) then ("--metadata_delimiter_char " +  '"' + metadataMetadataDelimiterChar + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{true="--install" false="" installInstall} \
      ~{true="--force_download" false="" forceForceDownload} \
      ~{if defined(readReadMinLen) then ("--read_min_len " +  '"' + readReadMinLen + '"') else ""} \
      ~{outputOutputFile}
  >>>
}