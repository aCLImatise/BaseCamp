from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Cmip_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".cmip_post_link.sh", base_command=[".cmip-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/cmip:2.6.5--h8c3ec31_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Cmip_Post_Link_Sh_V0_1_0().translate("wdl")

