from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bactopia_V0_1_0 = CommandToolBuilder(tool="bactopia", base_command=["bactopia"], inputs=[], outputs=[], container="quay.io/biocontainers/bactopia:1.6.5--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bactopia_V0_1_0().translate("wdl")

