version 1.0

task RelocaTEAbsenceFinder.pyAlignFileUsrTargetGenomePathTERegexFileExperFlankLenExistingTEMmAllowBowtie2LibSize {
  input {
    String? bedBedTools
  }
  command <<<
    relocaTE_absenceFinder.py align_file usr_target genome_path TE regex_file exper flank_len existing_TE mm_allow bowtie2 lib_size \
      ~{bedBedTools}
  >>>
}