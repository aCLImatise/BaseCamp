from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Phigaro_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".phigaro_post_link.sh", base_command=[".phigaro-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/phigaro:2.3.0--pyh7b7c402_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Phigaro_Post_Link_Sh_V0_1_0().translate("wdl")

