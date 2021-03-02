from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Init_Trinotate_Sqlite_Db_Pl_V0_1_0 = CommandToolBuilder(tool="init_Trinotate_sqlite_db.pl", base_command=["init_Trinotate_sqlite_db.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Init_Trinotate_Sqlite_Db_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

