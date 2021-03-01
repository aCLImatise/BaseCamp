from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Splitimage2Pdf_V0_1_0 = CommandToolBuilder(tool="splitimage2pdf", base_command=["splitimage2pdf"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitimage2Pdf_V0_1_0().translate("wdl", allow_empty_container=True)

