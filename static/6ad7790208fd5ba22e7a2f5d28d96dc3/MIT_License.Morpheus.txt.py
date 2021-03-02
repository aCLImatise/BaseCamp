from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mit_License_Morpheus_Txt_V0_1_0 = CommandToolBuilder(tool="MIT_License.Morpheus.txt", base_command=["MIT_License.Morpheus.txt"], inputs=[], outputs=[], container="quay.io/biocontainers/morpheus:287--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mit_License_Morpheus_Txt_V0_1_0().translate("wdl")

