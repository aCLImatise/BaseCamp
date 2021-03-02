from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Groovy_Script_V0_1_0 = CommandToolBuilder(tool="groovy_script", base_command=["groovy_script"], inputs=[], outputs=[], container="quay.io/biocontainers/bpipe:0.9.10--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Groovy_Script_V0_1_0().translate("wdl")

