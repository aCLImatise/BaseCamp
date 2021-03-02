from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Simulate_Phasing_Data_From_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="simulate_phasing_data_from_fasta.py", base_command=["simulate_phasing_data_from_fasta.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simulate_Phasing_Data_From_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

