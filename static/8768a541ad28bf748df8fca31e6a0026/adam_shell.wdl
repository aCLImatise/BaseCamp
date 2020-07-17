version 1.0

task AdamShell {
  input {
    File? preload_file_enforcing
    String? master
    String? deploy_mode
    String? class
    String? name
    String? jars
    Boolean? packages
    Boolean? exclude_packages
    Boolean? repositories
    String? py_files
    File? files
    String? conf
    File? properties_file
    String? driver_memory
    Boolean? driver_java_options
    Boolean? driver_library_path
    Boolean? driver_class_path
    String? executor_memory
    String? proxy_user
    Boolean? verbose
    String? driver_cores
    Boolean? supervise
    String? kill
    String? status
    String? total_executor_cores
    String? executor_cores
    String? num_executors
    String? principal
    String? keytab
    String? queue
    String? archives
  }
  command <<<
    adam-shell \
      ~{if defined(preload_file_enforcing) then ("-I " +  '"' + preload_file_enforcing + '"') else ""} \
      ~{if defined(master) then ("--master " +  '"' + master + '"') else ""} \
      ~{if defined(deploy_mode) then ("--deploy-mode " +  '"' + deploy_mode + '"') else ""} \
      ~{if defined(class) then ("--class " +  '"' + class + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(jars) then ("--jars " +  '"' + jars + '"') else ""} \
      ~{true="--packages" false="" packages} \
      ~{true="--exclude-packages" false="" exclude_packages} \
      ~{true="--repositories" false="" repositories} \
      ~{if defined(py_files) then ("--py-files " +  '"' + py_files + '"') else ""} \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(properties_file) then ("--properties-file " +  '"' + properties_file + '"') else ""} \
      ~{if defined(driver_memory) then ("--driver-memory " +  '"' + driver_memory + '"') else ""} \
      ~{true="--driver-java-options" false="" driver_java_options} \
      ~{true="--driver-library-path" false="" driver_library_path} \
      ~{true="--driver-class-path" false="" driver_class_path} \
      ~{if defined(executor_memory) then ("--executor-memory " +  '"' + executor_memory + '"') else ""} \
      ~{if defined(proxy_user) then ("--proxy-user " +  '"' + proxy_user + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(driver_cores) then ("--driver-cores " +  '"' + driver_cores + '"') else ""} \
      ~{true="--supervise" false="" supervise} \
      ~{if defined(kill) then ("--kill " +  '"' + kill + '"') else ""} \
      ~{if defined(status) then ("--status " +  '"' + status + '"') else ""} \
      ~{if defined(total_executor_cores) then ("--total-executor-cores " +  '"' + total_executor_cores + '"') else ""} \
      ~{if defined(executor_cores) then ("--executor-cores " +  '"' + executor_cores + '"') else ""} \
      ~{if defined(num_executors) then ("--num-executors " +  '"' + num_executors + '"') else ""} \
      ~{if defined(principal) then ("--principal " +  '"' + principal + '"') else ""} \
      ~{if defined(keytab) then ("--keytab " +  '"' + keytab + '"') else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(archives) then ("--archives " +  '"' + archives + '"') else ""}
  >>>
  parameter_meta {
    preload_file_enforcing: "preload <file>, enforcing line-by-line interpretation"
    master: "spark://host:port, mesos://host:port, yarn, k8s://https://host:port, or local (Default: local[*])."
    deploy_mode: "Whether to launch the driver program locally (\"client\") or on one of the worker machines inside the cluster (\"cluster\") (Default: client)."
    class: "Your application's main class (for Java / Scala apps)."
    name: "A name of your application."
    jars: "Comma-separated list of jars to include on the driver and executor classpaths."
    packages: "Comma-separated list of maven coordinates of jars to include on the driver and executor classpaths. Will search the local maven repo, then maven central and any additional remote repositories given by --repositories. The format for the coordinates should be groupId:artifactId:version."
    exclude_packages: "Comma-separated list of groupId:artifactId, to exclude while resolving the dependencies provided in --packages to avoid dependency conflicts."
    repositories: "Comma-separated list of additional remote repositories to search for the maven coordinates given with --packages."
    py_files: "Comma-separated list of .zip, .egg, or .py files to place on the PYTHONPATH for Python apps."
    files: "Comma-separated list of files to be placed in the working directory of each executor. File paths of these files in executors can be accessed via SparkFiles.get(fileName)."
    conf: "=VALUE       Arbitrary Spark configuration property."
    properties_file: "Path to a file from which to load extra properties. If not specified, this will look for conf/spark-defaults.conf."
    driver_memory: "Memory for driver (e.g. 1000M, 2G) (Default: 1024M)."
    driver_java_options: "Extra Java options to pass to the driver."
    driver_library_path: "Extra library path entries to pass to the driver."
    driver_class_path: "Extra class path entries to pass to the driver. Note that jars added with --jars are automatically included in the classpath."
    executor_memory: "Memory per executor (e.g. 1000M, 2G) (Default: 1G)."
    proxy_user: "User to impersonate when submitting the application. This argument does not work with --principal / --keytab."
    verbose: "Print additional debug output."
    driver_cores: "Number of cores used by the driver, only in cluster mode (Default: 1)."
    supervise: "If given, restarts the driver on failure."
    kill: "If given, kills the driver specified."
    status: "If given, requests the status of the driver specified."
    total_executor_cores: "Total cores for all executors."
    executor_cores: "Number of cores used by each executor. (Default: 1 in YARN and K8S modes, or all available cores on the worker in standalone mode)."
    num_executors: "Number of executors to launch (Default: 2). If dynamic allocation is enabled, the initial number of executors will be at least NUM."
    principal: "Principal to be used to login to KDC."
    keytab: "The full path to the file that contains the keytab for the principal specified above."
    queue: "The YARN queue to submit to (Default: \"default\")."
    archives: "Comma separated list of archives to be extracted into the working directory of each executor."
  }
}