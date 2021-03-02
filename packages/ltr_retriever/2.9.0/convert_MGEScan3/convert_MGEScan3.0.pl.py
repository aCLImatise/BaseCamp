from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convert_Mgescan3_0_Pl_V0_1_0 = CommandToolBuilder(tool="convert_MGEScan3.0.pl", base_command=["convert_MGEScan3.0.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/ltr_retriever:2.9.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Mgescan3_0_Pl_V0_1_0().translate("wdl")

