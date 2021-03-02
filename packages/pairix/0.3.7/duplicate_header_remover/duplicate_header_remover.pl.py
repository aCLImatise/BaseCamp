from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Duplicate_Header_Remover_Pl_V0_1_0 = CommandToolBuilder(tool="duplicate_header_remover.pl", base_command=["duplicate_header_remover.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Duplicate_Header_Remover_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

