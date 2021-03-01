from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convert_Ltrdetector_Pl_V0_1_0 = CommandToolBuilder(tool="convert_ltrdetector.pl", base_command=["convert_ltrdetector.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/ltr_retriever:2.9.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Ltrdetector_Pl_V0_1_0().translate("wdl")

