from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Lotus2_Pre_Unlink_Sh_V0_1_0 = CommandToolBuilder(tool=".lotus2_pre_unlink.sh", base_command=[".lotus2-pre-unlink.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/lotus2:2.01--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Lotus2_Pre_Unlink_Sh_V0_1_0().translate("wdl")

