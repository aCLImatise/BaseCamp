from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Pbaa_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".pbaa_post_link.sh", base_command=[".pbaa-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/pbaa:0.1.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pbaa_Post_Link_Sh_V0_1_0().translate("wdl")

