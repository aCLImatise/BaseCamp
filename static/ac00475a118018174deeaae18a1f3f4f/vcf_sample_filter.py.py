from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcf_Sample_Filter_Py_V0_1_0 = CommandToolBuilder(tool="vcf_sample_filter.py", base_command=["vcf_sample_filter.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf_Sample_Filter_Py_V0_1_0().translate("wdl", allow_empty_container=True)

