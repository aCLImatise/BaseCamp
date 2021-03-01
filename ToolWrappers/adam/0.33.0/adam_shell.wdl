version 1.0

task Adamshell {
  input {
    File? preload_file_enforcing
    Int? master
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
    Int? driver_memory
    Boolean? driver_java_options
    Boolean? driver_library_path
    Boolean? driver_class_path
    Int? executor_memory
    String? proxy_user
    Boolean? verbose
    Int? driver_cores
    Boolean? supervise
    String? kill
    String? status
    Int? total_executor_cores
    Int? executor_cores
    Int? num_executors
    String? principal
    File? keytab
    String? queue
    Directory? archives
  }
  command <<<
    adam_shell \
      ~{if defined(preload_file_enforcing) then ("-I " +  '"' + preload_file_enforcing + '"') else ""} \
      ~{if defined(master) then ("--master " +  '"' + master + '"') else ""} \
      ~{if defined(deploy_mode) then ("--deploy-mode " +  '"' + deploy_mode + '"') else ""} \
      ~{if defined(class) then ("--class " +  '"' + class + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(jars) then ("--jars " +  '"' + jars + '"') else ""} \
      ~{if (packages) then "--packages" else ""} \
      ~{if (exclude_packages) then "--exclude-packages" else ""} \
      ~{if (repositories) then "--repositories" else ""} \
      ~{if defined(py_files) then ("--py-files " +  '"' + py_files + '"') else ""} \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(properties_file) then ("--properties-file " +  '"' + properties_file + '"') else ""} \
      ~{if defined(driver_memory) then ("--driver-memory " +  '"' + driver_memory + '"') else ""} \
      ~{if (driver_java_options) then "--driver-java-options" else ""} \
      ~{if (driver_library_path) then "--driver-library-path" else ""} \
      ~{if (driver_class_path) then "--driver-class-path" else ""} \
      ~{if defined(executor_memory) then ("--executor-memory " +  '"' + executor_memory + '"') else ""} \
      ~{if defined(proxy_user) then ("--proxy-user " +  '"' + proxy_user + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(driver_cores) then ("--driver-cores " +  '"' + driver_cores + '"') else ""} \
      ~{if (supervise) then "--supervise" else ""} \
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
  runtime {
    docker: "quay.io/biocontainers/adam:0.33.0--0"
  }
  parameter_meta {
    preload_file_enforcing: "preload <file>, enforcing line-by-line interpretation"
    master: "spark://host:port, mesos://host:port, yarn,\\nk8s://https://host:port, or local (Default: local[*])."
    deploy_mode: "Whether to launch the driver program locally (\\\"client\\\") or\\non one of the worker machines inside the cluster (\\\"cluster\\\")\\n(Default: client)."
    class: "Your application's main class (for Java / Scala apps)."
    name: "A name of your application."
    jars: "Comma-separated list of jars to include on the driver\\nand executor classpaths."
    packages: "Comma-separated list of maven coordinates of jars to include\\non the driver and executor classpaths. Will search the local\\nmaven repo, then maven central and any additional remote\\nrepositories given by --repositories. The format for the\\ncoordinates should be groupId:artifactId:version."
    exclude_packages: "Comma-separated list of groupId:artifactId, to exclude while\\nresolving the dependencies provided in --packages to avoid\\ndependency conflicts."
    repositories: "Comma-separated list of additional remote repositories to\\nsearch for the maven coordinates given with --packages."
    py_files: "Comma-separated list of .zip, .egg, or .py files to place\\non the PYTHONPATH for Python apps."
    files: "Comma-separated list of files to be placed in the working\\ndirectory of each executor. File paths of these files\\nin executors can be accessed via SparkFiles.get(fileName)."
    conf: "=VALUE       Arbitrary Spark configuration property."
    properties_file: "Path to a file from which to load extra properties. If not\\nspecified, this will look for conf/spark-defaults.conf."
    driver_memory: "Memory for driver (e.g. 1000M, 2G) (Default: 1024M)."
    driver_java_options: "Extra Java options to pass to the driver."
    driver_library_path: "Extra library path entries to pass to the driver."
    driver_class_path: "Extra class path entries to pass to the driver. Note that\\njars added with --jars are automatically included in the\\nclasspath."
    executor_memory: "Memory per executor (e.g. 1000M, 2G) (Default: 1G)."
    proxy_user: "User to impersonate when submitting the application.\\nThis argument does not work with --principal / --keytab."
    verbose: "Print additional debug output."
    driver_cores: "Number of cores used by the driver, only in cluster mode\\n(Default: 1)."
    supervise: "If given, restarts the driver on failure."
    kill: "If given, kills the driver specified."
    status: "If given, requests the status of the driver specified."
    total_executor_cores: "Total cores for all executors."
    executor_cores: "Number of cores used by each executor. (Default: 1 in\\nYARN and K8S modes, or all available cores on the worker\\nin standalone mode)."
    num_executors: "Number of executors to launch (Default: 2).\\nIf dynamic allocation is enabled, the initial number of\\nexecutors will be at least NUM."
    principal: "Principal to be used to login to KDC."
    keytab: "The full path to the file that contains the keytab for the\\nprincipal specified above."
    queue: "The YARN queue to submit to (Default: \\\"default\\\")."
    archives: "Comma separated list of archives to be extracted into the\\nworking directory of each executor.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}