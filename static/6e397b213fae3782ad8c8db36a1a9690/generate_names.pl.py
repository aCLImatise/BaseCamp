from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Generate_Names_Pl_V0_1_0 = CommandToolBuilder(tool="generate_names.pl", base_command=["generate-names.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Names_Pl_V0_1_0().translate("wdl")

