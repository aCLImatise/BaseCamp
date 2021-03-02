from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mz_To_Sqlite_V0_1_0 = CommandToolBuilder(tool="mz_to_sqlite", base_command=["mz_to_sqlite"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mz_To_Sqlite_V0_1_0().translate("wdl", allow_empty_container=True)

