from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Genotype_V0_1_0 = CommandToolBuilder(tool="genotype", base_command=["genotype"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genotype_V0_1_0().translate("wdl", allow_empty_container=True)

