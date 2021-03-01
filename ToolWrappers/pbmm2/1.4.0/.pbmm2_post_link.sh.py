from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Pbmm2_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".pbmm2_post_link.sh", base_command=[".pbmm2-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/pbmm2:1.4.0--h56fc30b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pbmm2_Post_Link_Sh_V0_1_0().translate("wdl")

