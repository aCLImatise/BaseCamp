from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Pbsv_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".pbsv_post_link.sh", base_command=[".pbsv-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/pbsv:2.6.0--h9ee0642_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pbsv_Post_Link_Sh_V0_1_0().translate("wdl")

