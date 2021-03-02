from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Shiver_Align_Contigs_Sh_V0_1_0 = CommandToolBuilder(tool="shiver_align_contigs.sh", base_command=["shiver_align_contigs.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shiver_Align_Contigs_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

