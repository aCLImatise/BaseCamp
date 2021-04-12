from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Write_Qc_Report_Rmd_V0_1_0 = CommandToolBuilder(tool="write_QC_report.Rmd", base_command=["write_QC_report.Rmd"], inputs=[], outputs=[], container="quay.io/biocontainers/aquamis:1.3.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Write_Qc_Report_Rmd_V0_1_0().translate("wdl")

