from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Configure_Busco_Sh_V0_1_0 = CommandToolBuilder(tool="configure_busco.sh", base_command=["configure_busco.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/eukulele:1.0.4--pyhcb32578_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Configure_Busco_Sh_V0_1_0().translate("wdl")

