from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cpgcdifenrichhist_R_V0_1_0 = CommandToolBuilder(tool="cpgcdifenrichhist.R", base_command=["cpgcdifenrichhist.R"], inputs=[], outputs=[], container="quay.io/biocontainers/mmult:0.0.0.2--r40h8b68381_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cpgcdifenrichhist_R_V0_1_0().translate("wdl")

