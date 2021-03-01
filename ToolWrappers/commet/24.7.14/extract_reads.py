from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Extract_Reads_V0_1_0 = CommandToolBuilder(tool="extract_reads", base_command=["extract_reads"], inputs=[ToolInput(tag="in_output_results_given", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": Output results in the given file [default=stdout]")), ToolInput(tag="in_prints_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": prints the version number."))], outputs=[ToolOutput(tag="out_output_results_given", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_results_given", type_hint=File()), doc=OutputDocumentation(doc=": Output results in the given file [default=stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

