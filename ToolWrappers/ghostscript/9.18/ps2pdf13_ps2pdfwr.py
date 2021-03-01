from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ps2Pdf13_Ps2Pdfwr_V0_1_0 = CommandToolBuilder(tool="ps2pdf13_ps2pdfwr", base_command=["ps2pdf13", "ps2pdfwr"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ps2Pdf13_Ps2Pdfwr_V0_1_0().translate("wdl", allow_empty_container=True)

