from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ps2Pdf_Ps2Pdfwr_V0_1_0 = CommandToolBuilder(tool="ps2pdf_ps2pdfwr", base_command=["ps2pdf", "ps2pdfwr"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ps2Pdf_Ps2Pdfwr_V0_1_0().translate("wdl", allow_empty_container=True)

