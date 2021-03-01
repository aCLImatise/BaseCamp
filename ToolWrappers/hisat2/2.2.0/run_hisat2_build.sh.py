from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Hisat2_Build_Sh_V0_1_0 = CommandToolBuilder(tool="run_hisat2_build.sh", base_command=["run_hisat2_build.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Hisat2_Build_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

