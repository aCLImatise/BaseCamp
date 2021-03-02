from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Bam2Fastx_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".bam2fastx_post_link.sh", base_command=[".bam2fastx-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/bam2fastx:1.3.1--he1c1bb9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Bam2Fastx_Post_Link_Sh_V0_1_0().translate("wdl")

