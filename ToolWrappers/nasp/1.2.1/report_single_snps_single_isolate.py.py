from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Report_Single_Snps_Single_Isolate_Py_V0_1_0 = CommandToolBuilder(tool="report_single_snps_single_isolate.py", base_command=["report_single_snps_single_isolate.py"], inputs=[ToolInput(tag="in_input_matrix", input_type=File(optional=True), prefix="--input_matrix", doc=InputDocumentation(doc="/path/to/NASP_matrix [REQUIRED]")), ToolInput(tag="in_genome_name", input_type=String(optional=True), prefix="--genome_name", doc=InputDocumentation(doc="genome to look for singleton SNPs [REQUIRED]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Report_Single_Snps_Single_Isolate_Py_V0_1_0().translate("wdl", allow_empty_container=True)

