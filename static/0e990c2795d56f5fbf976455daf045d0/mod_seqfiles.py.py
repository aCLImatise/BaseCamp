from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mod_Seqfiles_Py_V0_1_0 = CommandToolBuilder(tool="mod_seqfiles.py", base_command=["mod_seqfiles.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mod_Seqfiles_Py_V0_1_0().translate("wdl", allow_empty_container=True)

