from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parse_Mappings_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="parse_mappings.pl.orig", base_command=["parse_mappings.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_Mappings_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

