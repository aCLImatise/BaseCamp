version 1.0

task FalconcM4filtipaRunner {
  input {
    Boolean? help_syntax
    Boolean? ovlsfofnfn_string_required
    Boolean? _idtstage_float
    Boolean? idt_stage_two
    Boolean? minlen_int_minimum
    Boolean? min_cov
    Boolean? max_cov
    Boolean? max_diff
    Boolean? _bestn_int
    Boolean? min_depth
    Boolean? gap_filt
    Boolean? keep_intermediates
    Boolean? _nproc_int
    Boolean? filterlogfn_string_required
    File outputfn_string_required
  }
  command <<<
    falconc m4filt_ipaRunner \
      ~{outputfn_string_required} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (ovlsfofnfn_string_required) then "-o" else ""} \
      ~{if (_idtstage_float) then "-i" else ""} \
      ~{if (idt_stage_two) then "--idt-stage2" else ""} \
      ~{if (minlen_int_minimum) then "-m" else ""} \
      ~{if (min_cov) then "--min-cov" else ""} \
      ~{if (max_cov) then "--max-cov" else ""} \
      ~{if (max_diff) then "--max-diff" else ""} \
      ~{if (_bestn_int) then "-b" else ""} \
      ~{if (min_depth) then "--min-depth" else ""} \
      ~{if (gap_filt) then "--gap-filt" else ""} \
      ~{if (keep_intermediates) then "--keepIntermediates" else ""} \
      ~{if (_nproc_int) then "-n" else ""} \
      ~{if (filterlogfn_string_required) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    ovlsfofnfn_string_required: "=, --ovls-fofn-fn=     string  REQUIRED  List of m4 files from ipa/raptor"
    _idtstage_float: "=, --idt-stage1=       float   90.0      Stage one percent identity filter,\\nformatted as percentage, overlaps <\\n%idt are skipped"
    idt_stage_two: "=            float   90.0      Stage two percent identify filter"
    minlen_int_minimum: "=, --min-len=          int     6000      Minimum read length, reads shorter\\nthan minLen will be discarded"
    min_cov: "=               int     2         Minimum number of overlaps on\\neither side of a read"
    max_cov: "=               int     200       Maximum number of overlaps on\\neither side of a read"
    max_diff: "=              int     100       Reads are skipped is abs(5p-3p)\\noverlap counts > maxDiff"
    _bestn_int: "=, --bestn=            int     10        Keep N best overlaps at 5prime AND\\n3prime of a read"
    min_depth: "=             int     2         Depths lower than minDepth are\\nconsidered gaps"
    gap_filt: "bool    false     Run depth filter, takes a little\\nmore time"
    keep_intermediates: "bool    false     set keepIntermediates"
    _nproc_int: "=, --n-proc=           int     24        Number of processes to run locally"
    filterlogfn_string_required: "=, --filter-log-fn=    string  REQUIRED  Write read filter stats to this"
    outputfn_string_required: "--outputFn=              string  REQUIRED  Final m4 overlap file"
  }
  output {
    File out_stdout = stdout()
  }
}