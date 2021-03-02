from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vibrant_Extract_Protein_Py_V0_1_0 = CommandToolBuilder(tool="VIBRANT_extract_protein.py", base_command=["VIBRANT_extract_protein.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vibrant_Extract_Protein_Py_V0_1_0().translate("wdl", allow_empty_container=True)

