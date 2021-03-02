from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Remove_Tradis_Tags_V0_1_0 = CommandToolBuilder(tool="remove_tradis_tags", base_command=["remove_tradis_tags"], inputs=[ToolInput(tag="in_fastq_file_tradis", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": fastq file with tradis tags")), ToolInput(tag="in__tag_remove", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": tag to remove")), ToolInput(tag="in_number_mismatches_allow", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": number of mismatches to allow when matching tag (optional. default = 0)")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output file name (optional. default: <file>.rmtag.fastq)")), ToolInput(tag="in_remove_tags", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc=": output file name (optional. default: <file>.rmtag.fastq)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Tradis_Tags_V0_1_0().translate("wdl", allow_empty_container=True)

