from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Junc_Db_V0_1_0 = CommandToolBuilder(tool="junc_db", base_command=["junc_db"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Junc_Db_V0_1_0().translate("wdl", allow_empty_container=True)

