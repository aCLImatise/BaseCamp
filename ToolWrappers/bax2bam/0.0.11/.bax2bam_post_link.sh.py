from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Bax2Bam_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".bax2bam_post_link.sh", base_command=[".bax2bam-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/bax2bam:0.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Bax2Bam_Post_Link_Sh_V0_1_0().translate("wdl")

