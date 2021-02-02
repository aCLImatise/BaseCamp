version 1.0

task FalconcM4filtcontained {
  input {
    Boolean? help_syntax
    Boolean? _infn_string
    File? _outfn_string
    Boolean? _nproc_int
    Boolean? min_len
    Boolean? min_idt_pct
  }
  command <<<
    falconc m4filt_contained \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_infn_string) then "-i" else ""} \
      ~{if (_outfn_string) then "-o" else ""} \
      ~{if (_nproc_int) then "-n" else ""} \
      ~{if (min_len) then "--min-len" else ""} \
      ~{if (min_idt_pct) then "--min-idt-pct" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _infn_string: "=, --in-fn=   string  REQUIRED  Input m4 overlap file"
    _outfn_string: "=, --out-fn=  string  REQUIRED  Output m4 overlap file"
    _nproc_int: "=, --n-proc=  int     24        Number of processes to run locally (ignored\\nfor now)"
    min_len: "=      int     400       Minimum read length; reads shorter than\\nminLen will be discarded"
    min_idt_pct: "=  float   96.0      Minimum overlap identity; worse overlaps\\nwill be discarded\\n"
  }
  output {
    File out_stdout = stdout()
    File out__outfn_string = "${in__outfn_string}"
  }
}