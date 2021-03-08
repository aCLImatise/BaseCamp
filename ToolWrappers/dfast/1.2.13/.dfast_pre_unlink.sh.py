from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Dfast_Pre_Unlink_Sh_V0_1_0 = CommandToolBuilder(tool=".dfast_pre_unlink.sh", base_command=[".dfast-pre-unlink.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/dfast:1.2.13--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Dfast_Pre_Unlink_Sh_V0_1_0().translate("wdl")

