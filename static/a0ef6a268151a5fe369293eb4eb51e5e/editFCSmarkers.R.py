from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Editfcsmarkers_R_V0_1_0 = CommandToolBuilder(tool="editFCSmarkers.R", base_command=["editFCSmarkers.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Editfcsmarkers_R_V0_1_0().translate("wdl", allow_empty_container=True)

