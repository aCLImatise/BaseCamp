from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Amptk_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".amptk_post_link.sh", base_command=[".amptk-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/amptk:1.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Amptk_Post_Link_Sh_V0_1_0().translate("wdl")

