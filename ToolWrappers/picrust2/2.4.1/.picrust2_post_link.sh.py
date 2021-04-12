from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Picrust2_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".picrust2_post_link.sh", base_command=[".picrust2-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/picrust2:2.4.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Picrust2_Post_Link_Sh_V0_1_0().translate("wdl")

