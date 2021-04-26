from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Merqury_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".merqury_post_link.sh", base_command=[".merqury-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/merqury:1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Merqury_Post_Link_Sh_V0_1_0().translate("wdl")

