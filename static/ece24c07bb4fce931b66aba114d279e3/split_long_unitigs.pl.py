from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Split_Long_Unitigs_Pl_V0_1_0 = CommandToolBuilder(tool="split_long_unitigs.pl", base_command=["split_long_unitigs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Long_Unitigs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

