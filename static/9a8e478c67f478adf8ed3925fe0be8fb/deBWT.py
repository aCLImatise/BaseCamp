from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Debwt_V0_1_0 = CommandToolBuilder(tool="deBWT", base_command=["deBWT"], inputs=[ToolInput(tag="in_output_bwt_filebinary", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output bwt file(binary)")), ToolInput(tag="in_optional_maximum_thread", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="(optional): maximum thread number(default 8)")), ToolInput(tag="in_optional_kmer_length", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="(optional): k-mer length (from 12 to 32, default 32)")), ToolInput(tag="in__jellyfish_directory", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc=": jellyfish directory")), ToolInput(tag="in_reference", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_bwt_filebinary", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bwt_filebinary", type_hint=File()), doc=OutputDocumentation(doc=": output bwt file(binary)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Debwt_V0_1_0().translate("wdl", allow_empty_container=True)

