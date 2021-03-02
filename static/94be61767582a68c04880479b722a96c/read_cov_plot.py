from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Read_Cov_Plot_V0_1_0 = CommandToolBuilder(tool="read_cov_plot", base_command=["read-cov-plot"], inputs=[ToolInput(tag="in_scafold_coordinates_instead", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="scafold coordinates instead of contig coordinates")), ToolInput(tag="in_only_print_line", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Only print every n-th line")), ToolInput(tag="in_bank", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Cov_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

