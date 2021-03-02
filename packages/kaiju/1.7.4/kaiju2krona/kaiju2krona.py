from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Kaiju2Krona_V0_1_0 = CommandToolBuilder(tool="kaiju2krona", base_command=["kaiju2krona"], inputs=[ToolInput(tag="in_name_input_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Name of input file")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file.")), ToolInput(tag="in_name_nodesdmp_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Name of nodes.dmp file")), ToolInput(tag="in_name_namesdmp_file", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="Name of names.dmp file")), ToolInput(tag="in_enable_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Enable verbose output.")), ToolInput(tag="in_include_count_unclassified", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Include count for unclassified reads in output."))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of output file."))], container="quay.io/biocontainers/kaiju:1.7.4--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju2Krona_V0_1_0().translate("wdl")

