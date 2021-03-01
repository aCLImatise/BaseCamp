from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Sexdeterrmine_V0_1_0 = CommandToolBuilder(tool="sexdeterrmine", base_command=["sexdeterrmine"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--Input", doc=InputDocumentation(doc="The input samtools depth file. Omit to read from\nstdin.")), ToolInput(tag="in_sample_list", input_type=File(optional=True), prefix="--SampleList", doc=InputDocumentation(doc="A list of samples/bams that were in the depth file.\nOne per line. Should be in the order of the samtools\ndepth output.")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_sample_list", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sample_list", type_hint=File()), doc=OutputDocumentation(doc="A list of samples/bams that were in the depth file.\nOne per line. Should be in the order of the samtools\ndepth output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sexdeterrmine_V0_1_0().translate("wdl", allow_empty_container=True)

