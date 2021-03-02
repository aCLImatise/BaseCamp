from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tblastn_Hit_Chainer_Pl_V0_1_0 = CommandToolBuilder(tool="TBLASTN_hit_chainer.pl", base_command=["TBLASTN_hit_chainer.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tblastn_Hit_Chainer_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

