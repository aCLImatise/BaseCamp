from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bam_Annotate_Sh_V0_1_0 = CommandToolBuilder(tool="bam_annotate.sh", base_command=["bam_annotate.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Annotate_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

