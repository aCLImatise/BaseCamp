from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ncbi_Genetic_Codes_Py_V0_1_0 = CommandToolBuilder(tool="ncbi_genetic_codes.py", base_command=["ncbi_genetic_codes.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncbi_Genetic_Codes_Py_V0_1_0().translate("wdl", allow_empty_container=True)

