from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Manual_May25_2020_Pdf_V0_1_0 = CommandToolBuilder(tool="Manual_May25_2020.pdf", base_command=["Manual_May25_2020.pdf"], inputs=[], outputs=[], container="quay.io/biocontainers/realphy:1.13--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Manual_May25_2020_Pdf_V0_1_0().translate("wdl")

