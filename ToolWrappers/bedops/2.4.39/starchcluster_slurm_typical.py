from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Starchcluster_Slurm_Typical_V0_1_0 = CommandToolBuilder(tool="starchcluster_slurm_typical", base_command=["starchcluster_slurm-typical"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starchcluster_Slurm_Typical_V0_1_0().translate("wdl", allow_empty_container=True)

