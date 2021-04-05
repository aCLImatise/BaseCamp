from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Dram_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".dram_post_link.sh", base_command=[".dram-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/dram:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Dram_Post_Link_Sh_V0_1_0().translate("wdl")

