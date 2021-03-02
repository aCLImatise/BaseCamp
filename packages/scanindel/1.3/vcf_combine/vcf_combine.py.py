from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcf_Combine_Py_V0_1_0 = CommandToolBuilder(tool="vcf_combine.py", base_command=["vcf-combine.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf_Combine_Py_V0_1_0().translate("wdl", allow_empty_container=True)

