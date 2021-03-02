from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Revision_287_V0_1_0 = CommandToolBuilder(tool="revision 287", base_command=["revision 287"], inputs=[], outputs=[], container="quay.io/biocontainers/morpheus:287--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Revision_287_V0_1_0().translate("wdl")

