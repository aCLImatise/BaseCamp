from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ensembl_Filter_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="ensembl_filter_fasta.py", base_command=["ensembl_filter_fasta.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ensembl_Filter_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

