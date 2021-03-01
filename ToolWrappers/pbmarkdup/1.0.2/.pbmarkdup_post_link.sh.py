from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Pbmarkdup_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".pbmarkdup_post_link.sh", base_command=[".pbmarkdup-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/pbmarkdup:1.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pbmarkdup_Post_Link_Sh_V0_1_0().translate("wdl")

