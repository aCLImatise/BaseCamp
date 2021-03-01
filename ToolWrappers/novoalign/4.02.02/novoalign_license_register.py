from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Novoalign_License_Register_V0_1_0 = CommandToolBuilder(tool="novoalign_license_register", base_command=["novoalign-license-register"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoalign_License_Register_V0_1_0().translate("wdl", allow_empty_container=True)

