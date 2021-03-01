from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Obo_Tab_To_Sqlite_Db_Pl_V0_1_0 = CommandToolBuilder(tool="obo_tab_to_sqlite_db.pl", base_command=["obo_tab_to_sqlite_db.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obo_Tab_To_Sqlite_Db_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

