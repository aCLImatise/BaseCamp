from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Process_Concatenated_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="process_concatenated_fasta.py", base_command=["process_concatenated_fasta.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Process_Concatenated_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

