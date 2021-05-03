from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Metaphlan_Pre_Unlink_Sh_V0_1_0 = CommandToolBuilder(tool=".metaphlan_pre_unlink.sh", base_command=[".metaphlan-pre-unlink.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/metaphlan:3.0.8--pyhb7b1952_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Metaphlan_Pre_Unlink_Sh_V0_1_0().translate("wdl")

