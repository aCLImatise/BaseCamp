version 1.0

task AlignTrimOrthologs.py {
  input {
    String? filterFilterOrthologSpy
  }
  command <<<
    align_trim_orthologs.py \
      ~{filterFilterOrthologSpy}
  >>>
}