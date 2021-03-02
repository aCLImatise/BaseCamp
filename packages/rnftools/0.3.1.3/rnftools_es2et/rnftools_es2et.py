from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rnftools_Es2Et_V0_1_0 = CommandToolBuilder(tool="rnftools_es2et", base_command=["rnftools", "es2et"], inputs=[ToolInput(tag="in_es", input_type=File(optional=True), prefix="--es", doc=InputDocumentation(doc="Input ES file (evaluated segments, - for standard\ninput).")), ToolInput(tag="in_et", input_type=File(optional=True), prefix="--et", doc=InputDocumentation(doc="Output ET file (evaluated read tuples, - for standard\noutput).\n"))], outputs=[ToolOutput(tag="out_et", output_type=File(optional=True), selector=InputSelector(input_to_select="in_et", type_hint=File()), doc=OutputDocumentation(doc="Output ET file (evaluated read tuples, - for standard\noutput).\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnftools_Es2Et_V0_1_0().translate("wdl", allow_empty_container=True)

