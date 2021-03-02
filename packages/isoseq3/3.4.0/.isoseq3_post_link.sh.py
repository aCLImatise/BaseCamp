from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Isoseq3_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".isoseq3_post_link.sh", base_command=[".isoseq3-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/isoseq3:3.4.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Isoseq3_Post_Link_Sh_V0_1_0().translate("wdl")

