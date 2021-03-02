from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bt_Srch_V0_1_0 = CommandToolBuilder(tool="bt_srch", base_command=["bt-srch"], inputs=[], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bt_Srch_V0_1_0().translate("wdl")

