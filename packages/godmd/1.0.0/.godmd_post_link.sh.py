from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Godmd_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".godmd_post_link.sh", base_command=[".godmd-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/godmd:1.0.0--hfad81c2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Godmd_Post_Link_Sh_V0_1_0().translate("wdl")

