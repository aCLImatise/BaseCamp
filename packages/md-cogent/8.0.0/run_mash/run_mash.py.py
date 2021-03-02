from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Mash_Py_V0_1_0 = CommandToolBuilder(tool="run_mash.py", base_command=["run_mash.py"], inputs=[], outputs=[], container="quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Mash_Py_V0_1_0().translate("wdl")

