from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Scaffreporttofasta_Pl_V0_1_0 = CommandToolBuilder(tool="scaffReportToFasta.pl", base_command=["scaffReportToFasta.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scaffreporttofasta_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

