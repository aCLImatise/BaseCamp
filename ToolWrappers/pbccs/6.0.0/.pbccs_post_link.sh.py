from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Pbccs_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".pbccs_post_link.sh", base_command=[".pbccs-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/pbccs:6.0.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pbccs_Post_Link_Sh_V0_1_0().translate("wdl")

