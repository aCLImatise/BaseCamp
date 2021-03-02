from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ionic_Zlib_Dll_V0_1_0 = CommandToolBuilder(tool="Ionic.Zlib.dll", base_command=["Ionic.Zlib.dll"], inputs=[], outputs=[], container="quay.io/biocontainers/morpheus:287--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ionic_Zlib_Dll_V0_1_0().translate("wdl")

