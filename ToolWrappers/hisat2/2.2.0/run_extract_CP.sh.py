from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Extract_Cp_Sh_V0_1_0 = CommandToolBuilder(tool="run_extract_CP.sh", base_command=["run_extract_CP.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Extract_Cp_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

