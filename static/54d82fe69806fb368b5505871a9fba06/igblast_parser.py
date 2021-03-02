from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Igblast_Parser_V0_1_0 = CommandToolBuilder(tool="igblast_parser", base_command=["igblast-parser"], inputs=[], outputs=[], container="quay.io/biocontainers/igblast-parser:0.0.4--py39h3dcb392_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igblast_Parser_V0_1_0().translate("wdl")

