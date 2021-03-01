from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Plasmidfinder_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".plasmidfinder_post_link.sh", base_command=[".plasmidfinder-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/plasmidfinder:2.1.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Plasmidfinder_Post_Link_Sh_V0_1_0().translate("wdl")

