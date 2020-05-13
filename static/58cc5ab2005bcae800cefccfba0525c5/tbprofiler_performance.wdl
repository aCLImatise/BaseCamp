version 1.0

task TbprofilerPerformance.pyAnalyseDrug {
  input {
    String dirDir
    Boolean itItOl
    String? drugDrug
    String? bedBed
  }
  command <<<
    tbprofiler_performance.py analyse drug \
      ~{drugDrug} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{true="--itol" false="" itItOl} \
      ~{bedBed}
  >>>
}