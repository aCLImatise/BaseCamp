from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Hisat2_Simulate_Reads_Py_Snp_File_V0_1_0 = CommandToolBuilder(tool="hisat2_simulate_reads.py_snp_file", base_command=["hisat2_simulate_reads.py", "snp_file"], inputs=[ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_single_end", input_type=Boolean(optional=True), prefix="--single-end", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_his_at_two_simulate_reads_do_tpy", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisat2_Simulate_Reads_Py_Snp_File_V0_1_0().translate("wdl")

