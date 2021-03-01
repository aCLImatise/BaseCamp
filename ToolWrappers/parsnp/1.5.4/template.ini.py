from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Template_Ini_V0_1_0 = CommandToolBuilder(tool="template.ini", base_command=["template.ini"], inputs=[], outputs=[], container="quay.io/biocontainers/parsnp:1.5.4--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Template_Ini_V0_1_0().translate("wdl")

