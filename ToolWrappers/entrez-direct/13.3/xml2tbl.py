from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Xml2Tbl_V0_1_0 = CommandToolBuilder(tool="xml2tbl", base_command=["xml2tbl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xml2Tbl_V0_1_0().translate("wdl", allow_empty_container=True)

