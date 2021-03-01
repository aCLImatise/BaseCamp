from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Abyss_Bloom_Dist_Mk_Makefile_V0_1_0 = CommandToolBuilder(tool="abyss_bloom_dist.mk.Makefile", base_command=["abyss-bloom-dist.mk.Makefile"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Bloom_Dist_Mk_Makefile_V0_1_0().translate("wdl", allow_empty_container=True)

