from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Jaffa_Direct_V0_1_0 = CommandToolBuilder(tool="jaffa_direct", base_command=["jaffa-direct"], inputs=[], outputs=[], container="quay.io/biocontainers/jaffa:2.1--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jaffa_Direct_V0_1_0().translate("wdl")

