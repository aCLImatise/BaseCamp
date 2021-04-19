from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Demo_Getopt_Long_Subcommand_V0_1_0 = CommandToolBuilder(tool="demo_getopt_long_subcommand", base_command=["demo-getopt-long-subcommand"], inputs=[], outputs=[], container="quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Demo_Getopt_Long_Subcommand_V0_1_0().translate("wdl")

