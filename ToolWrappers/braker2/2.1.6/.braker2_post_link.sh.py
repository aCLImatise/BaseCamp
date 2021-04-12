from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Braker2_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".braker2_post_link.sh", base_command=[".braker2-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Braker2_Post_Link_Sh_V0_1_0().translate("wdl")

