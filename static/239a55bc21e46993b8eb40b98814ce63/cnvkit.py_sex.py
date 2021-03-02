from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Cnvkit_Py_Sex_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_sex", base_command=["cnvkit.py", "sex"], inputs=[ToolInput(tag="in_haploid_x_reference", input_type=Boolean(optional=True), prefix="--haploid-x-reference", doc=InputDocumentation(doc="Assume inputs were normalized to a male reference\n(i.e. female samples will have +1 log-coverage of\nchrX; otherwise male samples would have -1 chrX).")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output table file name.\n")), ToolInput(tag="in_filenames", input_type=String(), position=0, doc=InputDocumentation(doc="Copy number or copy ratio files (*.cnn, *.cnr)."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output table file name.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Sex_V0_1_0().translate("wdl", allow_empty_container=True)

