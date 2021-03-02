from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Shiver_Reprocess_Bam_Sh_V0_1_0 = CommandToolBuilder(tool="shiver_reprocess_bam.sh", base_command=["shiver_reprocess_bam.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shiver_Reprocess_Bam_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

