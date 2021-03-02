from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Evidence_Modeler_Pl_V0_1_0 = CommandToolBuilder(tool="evidence_modeler.pl", base_command=["evidence_modeler.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evidence_Modeler_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

