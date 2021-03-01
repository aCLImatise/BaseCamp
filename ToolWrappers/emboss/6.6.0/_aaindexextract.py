from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Aaindexextract_V0_1_0 = CommandToolBuilder(tool="_aaindexextract", base_command=["_aaindexextract"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Aaindexextract_V0_1_0().translate("wdl", allow_empty_container=True)

