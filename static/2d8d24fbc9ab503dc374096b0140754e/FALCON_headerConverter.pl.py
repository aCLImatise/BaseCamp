from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Falcon_Headerconverter_Pl_V0_1_0 = CommandToolBuilder(tool="FALCON_headerConverter.pl", base_command=["FALCON_headerConverter.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falcon_Headerconverter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

