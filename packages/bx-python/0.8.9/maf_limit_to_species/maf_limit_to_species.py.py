from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf_Limit_To_Species_Py_V0_1_0 = CommandToolBuilder(tool="maf_limit_to_species.py", base_command=["maf_limit_to_species.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Limit_To_Species_Py_V0_1_0().translate("wdl", allow_empty_container=True)

