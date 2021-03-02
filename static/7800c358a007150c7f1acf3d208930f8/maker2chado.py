from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maker2Chado_V0_1_0 = CommandToolBuilder(tool="maker2chado", base_command=["maker2chado"], inputs=[], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maker2Chado_V0_1_0().translate("wdl")

