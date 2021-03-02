from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Orthomclextractproteinpairsfromgroupsfile_V0_1_0 = CommandToolBuilder(tool="orthomclExtractProteinPairsFromGroupsFile", base_command=["orthomclExtractProteinPairsFromGroupsFile"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomclextractproteinpairsfromgroupsfile_V0_1_0().translate("wdl", allow_empty_container=True)

