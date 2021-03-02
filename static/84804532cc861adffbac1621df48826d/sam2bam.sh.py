from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sam2Bam_Sh_V0_1_0 = CommandToolBuilder(tool="sam2bam.sh", base_command=["sam2bam.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sam2Bam_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

