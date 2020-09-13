version 1.0

task MetagenomePipelinepy {
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
    Directory? out_dir
  }
  command <<<
    metagenome_pipeline_py \
      ~{if defined(input_table_sequence) then ("--input " +  '"' + input_table_sequence + '"') else ""} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(marker) then ("--marker " +  '"' + marker + '"') else ""} \
      ~{if defined(max_nsti) then ("--max_nsti " +  '"' + max_nsti + '"') else ""} \
      ~{if defined(min_reads) then ("--min_reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""} \
      ~{if (strat_out) then "--strat_out" else ""} \
      ~{if (wide_table) then "--wide_table" else ""} \
      ~{if (skip_norm) then "--skip_norm" else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""}
  >>>
  parameter_meta {
    input_table_sequence: "Input table of sequence abundances (BIOM, TSV, or\\nmothur shared file format)."
    function: "Table of predicted gene family copy numbers (output of\\nhsp.py)."
    marker: "Table of predicted marker gene copy numbers (output of\\nhsp.py - typically for 16S)."
    max_nsti: "Sequences with NSTI values above this value will be\\nexcluded (default: 2)."
    min_reads: "Minimum number of reads across all samples for each\\ninput ASV. ASVs below this cut-off will be counted as\\npart of the \\\"RARE\\\" category in the stratified output\\n(default: 1)."
    min_samples: "Minimum number of samples that an ASV needs to be\\nidentfied within. ASVs below this cut-off will be\\ncounted as part of the \\\"RARE\\\" category in the\\nstratified output (default: 1)."
    strat_out: "Output table stratified by sequences as well. By\\ndefault this will be in \\\"contributional\\\" format (i.e.\\nlong-format) unless the \\\"--wide_table\\\" option is set.\\nThe startified outfile is named\\n\\\"metagenome_contrib.tsv.gz\\\" when in long-format."
    wide_table: "Output wide-format stratified table of metagenome\\npredictions when \\\"--strat_out\\\" is set. This is the\\ndeprecated method of generating stratified tables\\nsince it is extremely memory intensive. The startified\\noutfile is named \\\"pred_metagenome_strat.tsv.gz\\\" when\\nthis option is set."
    skip_norm: "Skip normalizing sequence abundances by predicted\\nmarker gene copy numbers (typically 16S rRNA genes).\\nThis step will be performed automatically unless this\\noption is specified."
    out_dir: "Output directory for metagenome predictions. (default:\\nmetagenome_out)."
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}