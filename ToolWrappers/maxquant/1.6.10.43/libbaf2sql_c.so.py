from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Libbaf2Sql_C_So_V0_1_0 = CommandToolBuilder(tool="libbaf2sql_c.so", base_command=["libbaf2sql_c.so"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Libbaf2Sql_C_So_V0_1_0().translate("wdl", allow_empty_container=True)

