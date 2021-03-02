from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Nunit_Framework_Pdb_V0_1_0 = CommandToolBuilder(tool="nunit.framework.pdb", base_command=["nunit.framework.pdb"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nunit_Framework_Pdb_V0_1_0().translate("wdl")

