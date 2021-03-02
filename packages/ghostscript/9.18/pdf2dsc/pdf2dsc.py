from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pdf2Dsc_V0_1_0 = CommandToolBuilder(tool="pdf2dsc", base_command=["pdf2dsc"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pdf2Dsc_V0_1_0().translate("wdl", allow_empty_container=True)

