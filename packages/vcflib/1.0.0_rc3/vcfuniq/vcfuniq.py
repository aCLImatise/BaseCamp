from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcfuniq_V0_1_0 = CommandToolBuilder(tool="vcfuniq", base_command=["vcfuniq"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfuniq_V0_1_0().translate("wdl", allow_empty_container=True)

