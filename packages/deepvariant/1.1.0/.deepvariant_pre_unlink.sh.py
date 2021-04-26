from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Deepvariant_Pre_Unlink_Sh_V0_1_0 = CommandToolBuilder(tool=".deepvariant_pre_unlink.sh", base_command=[".deepvariant-pre-unlink.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/deepvariant:1.1.0--py36hf3e76ba_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Deepvariant_Pre_Unlink_Sh_V0_1_0().translate("wdl")

