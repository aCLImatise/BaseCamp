version 1.0

task SortDenovoPrimers.py {
  input {
    String hitsHitsFile
  }
  command <<<
    sort_denovo_primers.py \
      ~{if defined(hitsHitsFile) then ("--hits_file " +  '"' + hitsHitsFile + '"') else ""}
  >>>
}