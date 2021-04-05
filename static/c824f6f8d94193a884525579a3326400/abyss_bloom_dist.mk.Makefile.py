from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Abyss_Bloom_Dist_Mk_Makefile_V0_1_0 = CommandToolBuilder(tool="abyss_bloom_dist.mk.Makefile", base_command=["abyss-bloom-dist.mk.Makefile"], inputs=[], outputs=[], container="quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Bloom_Dist_Mk_Makefile_V0_1_0().translate("wdl")

