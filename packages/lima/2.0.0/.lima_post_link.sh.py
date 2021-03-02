from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Lima_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".lima_post_link.sh", base_command=[".lima-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/lima:2.0.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Lima_Post_Link_Sh_V0_1_0().translate("wdl")

