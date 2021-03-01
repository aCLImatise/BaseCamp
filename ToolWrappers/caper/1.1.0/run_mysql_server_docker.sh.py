from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Mysql_Server_Docker_Sh_V0_1_0 = CommandToolBuilder(tool="run_mysql_server_docker.sh", base_command=["run_mysql_server_docker.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/caper:1.1.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Mysql_Server_Docker_Sh_V0_1_0().translate("wdl")

