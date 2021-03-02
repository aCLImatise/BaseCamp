from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prokka_Build_Kingdom_Dbs_V0_1_0 = CommandToolBuilder(tool="prokka_build_kingdom_dbs", base_command=["prokka-build_kingdom_dbs"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prokka_Build_Kingdom_Dbs_V0_1_0().translate("wdl", allow_empty_container=True)

