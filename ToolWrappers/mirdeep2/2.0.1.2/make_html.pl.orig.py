from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Html_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="make_html.pl.orig", base_command=["make_html.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Html_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

