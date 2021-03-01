from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convertfilestopdf_V0_1_0 = CommandToolBuilder(tool="convertfilestopdf", base_command=["convertfilestopdf"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertfilestopdf_V0_1_0().translate("wdl", allow_empty_container=True)

