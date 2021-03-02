from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Genbank2Gsi_Pl_V0_1_0 = CommandToolBuilder(tool="genbank2gsi.pl", base_command=["genbank2gsi.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/snoscan:1.0--pl526h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genbank2Gsi_Pl_V0_1_0().translate("wdl")

