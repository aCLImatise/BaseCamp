from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vdb_Passwd_2_10_8_V0_1_0 = CommandToolBuilder(tool="vdb_passwd.2.10.8", base_command=["vdb-passwd.2.10.8"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vdb_Passwd_2_10_8_V0_1_0().translate("wdl", allow_empty_container=True)

