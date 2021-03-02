from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Libsqlite_Interop_So_V0_1_0 = CommandToolBuilder(tool="libSQLite.Interop.so", base_command=["libSQLite.Interop.so"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Libsqlite_Interop_So_V0_1_0().translate("wdl", allow_empty_container=True)

