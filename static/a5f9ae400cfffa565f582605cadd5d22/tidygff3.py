from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tidygff3_V0_1_0 = CommandToolBuilder(tool="tidygff3", base_command=["tidygff3"], inputs=[], outputs=[], container="quay.io/biocontainers/aegean:0.16.0--hc2cb157_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tidygff3_V0_1_0().translate("wdl")

