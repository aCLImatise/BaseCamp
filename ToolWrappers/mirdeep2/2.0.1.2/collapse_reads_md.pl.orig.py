from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Collapse_Reads_Md_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="collapse_reads_md.pl.orig", base_command=["collapse_reads_md.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collapse_Reads_Md_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

