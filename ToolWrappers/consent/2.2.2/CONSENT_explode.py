from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Consent_Explode_V0_1_0 = CommandToolBuilder(tool="CONSENT_explode", base_command=["CONSENT-explode"], inputs=[], outputs=[], container="quay.io/biocontainers/consent:2.2.2--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Consent_Explode_V0_1_0().translate("wdl")

