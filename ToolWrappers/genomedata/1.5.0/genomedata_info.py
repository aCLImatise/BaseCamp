from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Genomedata_Info_V0_1_0 = CommandToolBuilder(tool="genomedata_info", base_command=["genomedata-info"], inputs=[], outputs=[], container="quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomedata_Info_V0_1_0().translate("wdl")

