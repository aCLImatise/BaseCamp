version 1.0

task BrackenBuild {
  input {
    String? databaseDatabase
    String? threadsThreads
  }
  command <<<
    bracken-build \
      ~{databaseDatabase} \
      ~{threadsThreads}
  >>>
}