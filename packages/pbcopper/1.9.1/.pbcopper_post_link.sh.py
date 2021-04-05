from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Pbcopper_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".pbcopper_post_link.sh", base_command=[".pbcopper-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/pbcopper:1.9.1--h3e4de3e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pbcopper_Post_Link_Sh_V0_1_0().translate("wdl")

