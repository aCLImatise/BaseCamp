from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mirdeep2_Core_Algorithm_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="miRDeep2_core_algorithm.pl.orig", base_command=["miRDeep2_core_algorithm.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mirdeep2_Core_Algorithm_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

