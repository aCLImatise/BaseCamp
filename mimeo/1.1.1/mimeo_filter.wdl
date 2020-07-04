version 1.0

task MimeoFilter {
  input {
    String? in_file
    String? outdir
    String? outfile
    Boolean? keep_temp
    Boolean? verbose
    String? trf_path
    String? t_match
    String? t_mismatch
    String? t_delta
    String? tpm
    String? tpi
    String? tm_in_score
    String? tmax_period
    Int? max_tandem
  }
  command <<<
    mimeo-filter \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{true="--keeptemp" false="" keep_temp} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(trf_path) then ("--TRFpath " +  '"' + trf_path + '"') else ""} \
      ~{if defined(t_match) then ("--tmatch " +  '"' + t_match + '"') else ""} \
      ~{if defined(t_mismatch) then ("--tmismatch " +  '"' + t_mismatch + '"') else ""} \
      ~{if defined(t_delta) then ("--tdelta " +  '"' + t_delta + '"') else ""} \
      ~{if defined(tpm) then ("--tPM " +  '"' + tpm + '"') else ""} \
      ~{if defined(tpi) then ("--tPI " +  '"' + tpi + '"') else ""} \
      ~{if defined(tm_in_score) then ("--tminscore " +  '"' + tm_in_score + '"') else ""} \
      ~{if defined(tmax_period) then ("--tmaxperiod " +  '"' + tmax_period + '"') else ""} \
      ~{if defined(max_tandem) then ("--maxtandem " +  '"' + max_tandem + '"') else ""}
  >>>
  parameter_meta {
    in_file: "Name of directory containing sequences from A genome."
    outdir: "Write output files to this directory. (Default: cwd)"
    outfile: "Name of alignment result file."
    keep_temp: "If set do not remove temp files."
    verbose: "If set report LASTZ progress."
    trf_path: "Custom path to TRF executable if not in $PATH."
    t_match: "TRF matching weight"
    t_mismatch: "TRF mismatching penalty"
    t_delta: "TRF indel penalty"
    tpm: "TRF match probability"
    tpi: "TRF indel probability"
    tm_in_score: "TRF minimum alignment score to report"
    tmax_period: "TRF maximum period size to report. Note: Setting this score too high may exclude some LTR retrotransposons. Optimal len to exclude only SSRs is 10-50bp."
    max_tandem: "Max percentage of a sequence which may be masked by TRF. If exceeded, element will be discarded."
  }
}