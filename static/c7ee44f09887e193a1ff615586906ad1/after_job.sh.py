from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


After_Job_Sh_V0_1_0 = CommandToolBuilder(tool="after_job.sh", base_command=["after_job.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/eukulele:1.0.4--pyhcb32578_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    After_Job_Sh_V0_1_0().translate("wdl")

