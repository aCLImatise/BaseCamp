from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Oncogemini_Windower_V0_1_0 = CommandToolBuilder(tool="oncogemini_windower", base_command=["oncogemini", "windower"], inputs=[ToolInput(tag="in_name_column_added", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="The name of the column to be added to the variant")), ToolInput(tag="in_type_windowed_requested", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="The type of windowed analysis requested.")), ToolInput(tag="in_operation_applied_t", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="The operation that should be applied to the -t values.\n")), ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_table_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-s STEP_SIZE          The step size for the windows in bp."))], outputs=[], container="quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Windower_V0_1_0().translate("wdl")

