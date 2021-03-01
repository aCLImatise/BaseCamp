from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Vtools_Report_Trans_Ratio_V0_1_0 = CommandToolBuilder(tool="vtools_report_trans_ratio", base_command=["vtools_report", "trans_ratio"], inputs=[ToolInput(tag="in_num_field", input_type=Int(optional=True), prefix="--num_field", doc=InputDocumentation(doc="Name of the field that holds sample variant count,\nwhich is the field name for command 'vtools update\ntable --from_stat 'num=#(alt)''.")), ToolInput(tag="in_group_by", input_type=Boolean(optional=True), prefix="--group_by", doc=InputDocumentation(doc="[GROUP_BY [GROUP_BY ...]], --group-by [GROUP_BY [GROUP_BY ...]]\nOutput transition/transversion rate for groups of\nvariants. e.g. --group_by num for each sample variant\nfrequency group.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Output error and warning (0), info (1), debug (2) and\ntrace (3) information to standard output (default to\n1).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Report_Trans_Ratio_V0_1_0().translate("wdl", allow_empty_container=True)

