from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Mummer1_V0_1_0 = CommandToolBuilder(tool="run_mummer1", base_command=["run-mummer1"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Mummer1_V0_1_0().translate("wdl", allow_empty_container=True)

