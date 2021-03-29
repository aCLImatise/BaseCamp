from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Spades_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".spades_post_link.sh", base_command=[".spades-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/spades:3.15.2--h633aebb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Spades_Post_Link_Sh_V0_1_0().translate("wdl")

