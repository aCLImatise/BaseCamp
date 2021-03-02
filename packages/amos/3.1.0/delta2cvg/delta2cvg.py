from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Delta2Cvg_V0_1_0 = CommandToolBuilder(tool="delta2cvg", base_command=["delta2cvg"], inputs=[ToolInput(tag="in_min_coverage_display", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="- Min coverage to display")), ToolInput(tag="in_max_coverage_display", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="- Max coverage to display")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="-merge", doc=InputDocumentation(doc="- Merge coverage intervals")), ToolInput(tag="in_version_print_version", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="|version      - Print the version and exit;")), ToolInput(tag="in_depend", input_type=Boolean(optional=True), prefix="-depend", doc=InputDocumentation(doc="- Print the program and database dependency list;")), ToolInput(tag="in_debug", input_type=Int(optional=True), prefix="-debug", doc=InputDocumentation(doc="- Set the debug <level> (0, non-debug by default);")), ToolInput(tag="in_delta_file", input_type=String(), position=0, doc=InputDocumentation(doc="#>Streptococcus_suis 2_14_26_F3 2007491 46"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Delta2Cvg_V0_1_0().translate("wdl", allow_empty_container=True)

