from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Modules_V0_1_0 = CommandToolBuilder(tool="modules", base_command=["modules"], inputs=[], outputs=[], container="quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Modules_V0_1_0().translate("wdl")

