from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Curves_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".curves_post_link.sh", base_command=[".curves-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/curves:3.0.0--hc99cbb1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Curves_Post_Link_Sh_V0_1_0().translate("wdl")

