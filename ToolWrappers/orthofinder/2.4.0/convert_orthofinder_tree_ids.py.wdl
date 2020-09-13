version 1.0

task ConvertOrthofinderTreeIdspy {
  command <<<
    convert_orthofinder_tree_ids_py
  >>>
  output {
    File out_stdout = stdout()
  }
}