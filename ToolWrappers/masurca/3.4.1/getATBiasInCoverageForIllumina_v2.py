from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Getatbiasincoverageforillumina_V2_V0_1_0 = CommandToolBuilder(tool="getATBiasInCoverageForIllumina_v2", base_command=["getATBiasInCoverageForIllumina_v2"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getatbiasincoverageforillumina_V2_V0_1_0().translate("wdl", allow_empty_container=True)

