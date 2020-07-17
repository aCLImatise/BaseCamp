version 1.0

task MetagenomePipeline.py {
  input {
    File? input_table_sequence
    File? function
    File? marker
    Float? max_nsti
    Int? min_reads
    Int? min_samples
    Boolean? strat_out
    Boolean? wide_table
    Boolean? skip_norm
    File? out_dir
  }
  command <<<
    metagenome_pipeline.py \
      ~{if defined(input_table_sequence) then ("--input " +  '"' + input_table_sequence + '"') else ""} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(marker) then ("--marker " +  '"' + marker + '"') else ""} \
      ~{if defined(max_nsti) then ("--max_nsti " +  '"' + max_nsti + '"') else ""} \
      ~{if defined(min_reads) then ("--min_reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""} \
      ~{true="--strat_out" false="" strat_out} \
      ~{true="--wide_table" false="" wide_table} \
      ~{true="--skip_norm" false="" skip_norm} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""}
  >>>
  parameter_meta {
    input_table_sequence: "Input table of sequence abundances (BIOM, TSV, or mothur shared file format)."
    function: "Table of predicted gene family copy numbers (output of hsp.py)."
    marker: "Table of predicted marker gene copy numbers (output of hsp.py - typically for 16S)."
    max_nsti: "Sequences with NSTI values above this value will be excluded (default: 2)."
    min_reads: "Minimum number of reads across all samples for each input ASV. ASVs below this cut-off will be counted as part of the \"RARE\" category in the stratified output (default: 1)."
    min_samples: "Minimum number of samples that an ASV needs to be identfied within. ASVs below this cut-off will be counted as part of the \"RARE\" category in the stratified output (default: 1)."
    strat_out: "Output table stratified by sequences as well. By default this will be in \"contributional\" format (i.e. long-format) unless the \"--wide_table\" option is set. The startified outfile is named \"metagenome_contrib.tsv.gz\" when in long-format."
    wide_table: "Output wide-format stratified table of metagenome predictions when \"--strat_out\" is set. This is the deprecated method of generating stratified tables since it is extremely memory intensive. The startified outfile is named \"pred_metagenome_strat.tsv.gz\" when this option is set."
    skip_norm: "Skip normalizing sequence abundances by predicted marker gene copy numbers (typically 16S rRNA genes). This step will be performed automatically unless this option is specified."
    out_dir: "Output directory for metagenome predictions. (default: metagenome_out)."
  }
}