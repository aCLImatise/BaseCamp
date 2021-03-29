from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Pbgcpp_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".pbgcpp_post_link.sh", base_command=[".pbgcpp-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/pbgcpp:2.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pbgcpp_Post_Link_Sh_V0_1_0().translate("wdl")

