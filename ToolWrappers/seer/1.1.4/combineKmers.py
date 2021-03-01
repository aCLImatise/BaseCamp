from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Combinekmers_V0_1_0 = CommandToolBuilder(tool="combineKmers", base_command=["combineKmers"], inputs=[ToolInput(tag="in_arg_file_name", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --samples ] arg    file with tab separated sample name and kmer file")), ToolInput(tag="in_arg_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output ] arg     output file prefix")), ToolInput(tag="in_min_samples", input_type=Int(optional=True), prefix="--min_samples", doc=InputDocumentation(doc="(=1)  minimum number of samples kmer must occur in to be")), ToolInput(tag="in_printed", input_type=String(), position=0, doc=InputDocumentation(doc="-h [ --help ]           full help message"))], outputs=[ToolOutput(tag="out_arg_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_file", type_hint=File()), doc=OutputDocumentation(doc="[ --output ] arg     output file prefix"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combinekmers_V0_1_0().translate("wdl", allow_empty_container=True)

