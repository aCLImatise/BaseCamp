from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Orthomclloadblast_Sql_V0_1_0 = CommandToolBuilder(tool="orthomclLoadBlast.sql", base_command=["orthomclLoadBlast.sql"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomclloadblast_Sql_V0_1_0().translate("wdl", allow_empty_container=True)

