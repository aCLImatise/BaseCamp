from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Argparse2Tool_Check_Path_V0_1_0 = CommandToolBuilder(tool="argparse2tool_check_path", base_command=["argparse2tool_check_path"], inputs=[], outputs=[], container="quay.io/biocontainers/argparse2tool:0.4.9--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Argparse2Tool_Check_Path_V0_1_0().translate("wdl")

