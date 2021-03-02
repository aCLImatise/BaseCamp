from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Indelstat_Sam_Bam_V0_1_0 = CommandToolBuilder(tool="indelstat_sam_bam", base_command=["indelstat_sam_bam"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Indelstat_Sam_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

