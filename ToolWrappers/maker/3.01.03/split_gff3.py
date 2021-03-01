from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Split_Gff3_V0_1_0 = CommandToolBuilder(tool="split_gff3", base_command=["split_gff3"], inputs=[], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Gff3_V0_1_0().translate("wdl")

