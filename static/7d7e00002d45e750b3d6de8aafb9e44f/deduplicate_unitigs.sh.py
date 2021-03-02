from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Deduplicate_Unitigs_Sh_V0_1_0 = CommandToolBuilder(tool="deduplicate_unitigs.sh", base_command=["deduplicate_unitigs.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deduplicate_Unitigs_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

