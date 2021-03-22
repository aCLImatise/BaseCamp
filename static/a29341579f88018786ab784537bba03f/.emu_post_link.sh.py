from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Emu_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".emu_post_link.sh", base_command=[".emu-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/emu:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Emu_Post_Link_Sh_V0_1_0().translate("wdl")

