from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bamdifference_V0_1_0 = CommandToolBuilder(tool="bamdifference", base_command=["bamdifference"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc=": print progress report")), ToolInput(tag="in_md_five", input_type=Boolean(optional=True), prefix="--md5", doc=InputDocumentation(doc="<[0]>              : create md5 check sum (default: 0)")), ToolInput(tag="in_md_five_filename", input_type=File(optional=True), prefix="--md5filename", doc=InputDocumentation(doc=": file name for md5 check sum (default: extend output file name)")), ToolInput(tag="in_full_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_partial_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_md_five_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_md_five_filename", type_hint=File()), doc=OutputDocumentation(doc=": file name for md5 check sum (default: extend output file name)"))], container="quay.io/biocontainers/biobambam:2.0.179--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamdifference_V0_1_0().translate("wdl")

