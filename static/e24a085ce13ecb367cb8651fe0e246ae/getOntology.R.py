from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Getontology_R_V0_1_0 = CommandToolBuilder(tool="getOntology.R", base_command=["getOntology.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getontology_R_V0_1_0().translate("wdl", allow_empty_container=True)

