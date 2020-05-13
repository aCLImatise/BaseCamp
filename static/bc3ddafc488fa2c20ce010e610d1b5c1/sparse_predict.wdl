version 1.0

task SparsePredict {
  input {
    String nNThread
  }
  command <<<
    sparse predict \
      ~{if defined(nNThread) then ("--n_thread " +  '"' + nNThread + '"') else ""}
  >>>
}