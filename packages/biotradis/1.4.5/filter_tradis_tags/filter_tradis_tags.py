from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Filter_Tradis_Tags_V0_1_0 = CommandToolBuilder(tool="filter_tradis_tags", base_command=["filter_tradis_tags"], inputs=[ToolInput(tag="in_fastq_file_tradis", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": fastq file with tradis tags attached")), ToolInput(tag="in__tag_search", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": tag to search for")), ToolInput(tag="in_number_mismatches_allow", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": number of mismatches to allow when matching tag (optional. default = 0)")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output file name (optional. default: <file>.tag.fastq)")), ToolInput(tag="in_b", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_filter_tags", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc=": output file name (optional. default: <file>.tag.fastq)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Tradis_Tags_V0_1_0().translate("wdl", allow_empty_container=True)

