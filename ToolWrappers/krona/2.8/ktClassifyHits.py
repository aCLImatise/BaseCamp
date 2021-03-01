from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ktclassifyhits_V0_1_0 = CommandToolBuilder(tool="ktClassifyHits", base_command=["ktClassifyHits"], inputs=[], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktclassifyhits_V0_1_0().translate("wdl")

