from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Pbbam_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".pbbam_post_link.sh", base_command=[".pbbam-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pbbam_Post_Link_Sh_V0_1_0().translate("wdl")

