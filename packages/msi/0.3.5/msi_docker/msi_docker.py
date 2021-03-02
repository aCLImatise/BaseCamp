from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Msi_Docker_V0_1_0 = CommandToolBuilder(tool="msi_docker", base_command=["msi_docker"], inputs=[], outputs=[], container="quay.io/biocontainers/msi:0.3.5--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msi_Docker_V0_1_0().translate("wdl")

