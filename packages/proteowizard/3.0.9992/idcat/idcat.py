from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Idcat_V0_1_0 = CommandToolBuilder(tool="idcat", base_command=["idcat"], inputs=[ToolInput(tag="in_fields", input_type=String(optional=True), prefix="--fields", doc=InputDocumentation(doc=": comma separated list of fields to display")), ToolInput(tag="in_overwrite_file_it", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --force ]        : overwrite file if it exists.")), ToolInput(tag="in_arg_sort_single", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --sort ] arg     : sort by (single) column")), ToolInput(tag="in_arg_output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output ] arg   : output filename or directory (for multiple files).")), ToolInput(tag="in_prints_extra_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbose ]      : prints extra information.")), ToolInput(tag="in_scan", input_type=String(), position=0, doc=InputDocumentation(doc="rt")), ToolInput(tag="in_mz", input_type=String(), position=1, doc=InputDocumentation(doc="charge")), ToolInput(tag="in_score", input_type=String(), position=2, doc=InputDocumentation(doc="scoretype")), ToolInput(tag="in_peptide", input_type=String(), position=3, doc=InputDocumentation(doc="protein"))], outputs=[ToolOutput(tag="out_arg_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_filename", type_hint=File()), doc=OutputDocumentation(doc="[ --output ] arg   : output filename or directory (for multiple files)."))], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idcat_V0_1_0().translate("wdl")

