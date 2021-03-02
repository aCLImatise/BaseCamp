from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Expmatrixtobarchartbed_Bedfile_V0_1_0 = CommandToolBuilder(tool="expMatrixToBarchartBed_bedFile", base_command=["expMatrixToBarchartBed", "bedFile"], inputs=[ToolInput(tag="in_auto_sql", input_type=String(optional=True), prefix="--autoSql", doc=InputDocumentation(doc="")), ToolInput(tag="in_exp_matrix_to_barchart_bed", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Expmatrixtobarchartbed_Bedfile_V0_1_0().translate("wdl", allow_empty_container=True)

