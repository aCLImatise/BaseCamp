from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastaparse_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="fastaparse.pl.orig", base_command=["fastaparse.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaparse_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

