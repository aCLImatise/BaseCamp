from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Gnali_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".gnali_post_link.sh", base_command=[".gnali-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/gnali:1.0.2--py37heccd8a3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Gnali_Post_Link_Sh_V0_1_0().translate("wdl")

