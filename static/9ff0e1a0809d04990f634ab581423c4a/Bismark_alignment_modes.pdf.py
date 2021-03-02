from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bismark_Alignment_Modes_Pdf_V0_1_0 = CommandToolBuilder(tool="Bismark_alignment_modes.pdf", base_command=["Bismark_alignment_modes.pdf"], inputs=[], outputs=[], container="quay.io/biocontainers/bismark:0.23.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bismark_Alignment_Modes_Pdf_V0_1_0().translate("wdl")

