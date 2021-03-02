from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Update_Blastdb_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="update_blastdb.pl.bak", base_command=["update_blastdb.pl.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Update_Blastdb_Pl_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

