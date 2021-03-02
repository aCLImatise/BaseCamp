from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Checkv_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".checkv_post_link.sh", base_command=[".checkv-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/checkv:0.7.0--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Checkv_Post_Link_Sh_V0_1_0().translate("wdl")

