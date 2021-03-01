from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Buildposmap_V0_1_0 = CommandToolBuilder(tool="buildPosMap", base_command=["buildPosMap"], inputs=[ToolInput(tag="in_write_output_here", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="write the output here")), ToolInput(tag="in_read_assembly_here", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="read the assembly from here; default is to read stdin")), ToolInput(tag="in_supplied_also_report", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="if supplied, also report deleted reads and read/mate library information")), ToolInput(tag="in_write_unplaced_reads", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="write unplaced surrogate reads 'sfgctg' and 'sfgscf' (LARGE!)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Buildposmap_V0_1_0().translate("wdl", allow_empty_container=True)

