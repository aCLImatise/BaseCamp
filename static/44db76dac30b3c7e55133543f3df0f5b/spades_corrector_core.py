from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Spades_Corrector_Core_V0_1_0 = CommandToolBuilder(tool="spades_corrector_core", base_command=["spades-corrector-core"], inputs=[], outputs=[], container="quay.io/biocontainers/spades:3.15.0--h633aebb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Corrector_Core_V0_1_0().translate("wdl")

