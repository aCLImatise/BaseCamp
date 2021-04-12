from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Build_Env_Setup_Sh_V0_1_0 = CommandToolBuilder(tool="build_env_setup.sh", base_command=["build_env_setup.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.3--ha8f3691_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Env_Setup_Sh_V0_1_0().translate("wdl")

