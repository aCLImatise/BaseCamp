from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Referenceopt_Sh_V0_1_0 = CommandToolBuilder(tool="ReferenceOpt.sh", base_command=["ReferenceOpt.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/ddocent:2.8.13--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Referenceopt_Sh_V0_1_0().translate("wdl")

