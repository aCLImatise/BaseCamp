from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


A3M_Database_Reduce_V0_1_0 = CommandToolBuilder(tool="a3m_database_reduce", base_command=["a3m_database_reduce"], inputs=[], outputs=[], container="quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    A3M_Database_Reduce_V0_1_0().translate("wdl")

