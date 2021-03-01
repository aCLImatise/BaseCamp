version 1.0

task FalconcM4filtfalconRunner {
  input {
    Boolean? db_string_required
    Boolean? lasjsonfn_string_required
    Boolean? _idtstage_float
    Boolean? idt_stage_two
    Boolean? max_cov
    Boolean? max_diff
    Boolean? _bestn_int
    Boolean? min_depth
    Boolean? min_overhang
    Boolean? gap_filt
    Boolean? keep_intermediates
    Boolean? _nproc_int
    Boolean? debug_log_fn
    File? _outfn_string
    String help
    String filter
    String discarded
    String locally
  }
  command <<<
    falconc m4filt_falconRunner \
      ~{help} \
      ~{filter} \
      ~{discarded} \
      ~{locally} \
      ~{if (db_string_required) then "-d" else ""} \
      ~{if (lasjsonfn_string_required) then "-l" else ""} \
      ~{if (_idtstage_float) then "-i" else ""} \
      ~{if (idt_stage_two) then "--idt-stage2" else ""} \
      ~{if (max_cov) then "--max-cov" else ""} \
      ~{if (max_diff) then "--max-diff" else ""} \
      ~{if (_bestn_int) then "-b" else ""} \
      ~{if (min_depth) then "--min-depth" else ""} \
      ~{if (min_overhang) then "--minOverhang" else ""} \
      ~{if (gap_filt) then "--gap-filt" else ""} \
      ~{if (keep_intermediates) then "--keepIntermediates" else ""} \
      ~{if (_nproc_int) then "-n" else ""} \
      ~{if (debug_log_fn) then "--debug-log-fn" else ""} \
      ~{if (_outfn_string) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db_string_required: "=, --db=               string  REQUIRED         set db"
    lasjsonfn_string_required: "=, --las-json-fn=      string  REQUIRED         List of las files from\\nfalcon, e.g../1-preads_ovl/\\nlas-merge-combine/las_fofn.j\\nson"
    _idtstage_float: "=, --idt-stage1=       float   90.0             Stage one percent identity\\nfilter, formatted as\\npercentage, overlaps < %idt\\nare skipped"
    idt_stage_two: "=            float   90.0             Stage two percent identify"
    max_cov: "=               int     200              Maximum number of overlaps\\non either side of a read"
    max_diff: "=              int     100              Reads are skipped is\\nabs(5p-3p) overlap counts >\\nmaxDiff"
    _bestn_int: "=, --bestn=            int     10               Keep N best overlaps at\\n5prime AND 3prime of a read"
    min_depth: "=             int     2                Depths lower than minDepth\\nare considered gaps"
    min_overhang: "=           int     0                set minOverhang"
    gap_filt: "bool    false            Run depth filter, takes a\\nlittle more time"
    keep_intermediates: "bool    false            set keepIntermediates"
    _nproc_int: "=, --n-proc=           int     24               Number of processes to run"
    debug_log_fn: "=          string  \\\"LA4Falcon.log\\\"  Write stderr to this file"
    _outfn_string: "=, --out-fn=           string  REQUIRED         Final m4 overlap file"
    help: "--help-syntax                                     advanced: prepend,plurals,.."
    filter: "-m=, --min-len=          int     6000             Minimum read length, reads"
    discarded: "--min-cov=               int     2                Minimum number of overlaps"
    locally: "-f=, --filter-log-fn=    string  REQUIRED         Write read filter stats to"
  }
  output {
    File out_stdout = stdout()
    File out__outfn_string = "${in__outfn_string}"
  }
}