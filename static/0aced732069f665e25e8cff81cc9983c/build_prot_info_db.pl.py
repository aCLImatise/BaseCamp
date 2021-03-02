from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Build_Prot_Info_Db_Pl_V0_1_0 = CommandToolBuilder(tool="build_prot_info_db.pl", base_command=["build_prot_info_db.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Prot_Info_Db_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

