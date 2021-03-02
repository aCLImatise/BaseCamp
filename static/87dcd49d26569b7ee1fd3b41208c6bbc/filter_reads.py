from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Float, File

Filter_Reads_V0_1_0 = CommandToolBuilder(tool="filter_reads", base_command=["filter_reads"], inputs=[ToolInput(tag="in_file_where_written", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=": file where the boolean vector will be written [default=input_file.bv]")), ToolInput(tag="in_minimal_length_read", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc=": minimal length a read should have to be kept. [default=0]")), ToolInput(tag="in_maximal_number_read", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc=": maximal number of Ns a read should contain to be kept. [default=any]")), ToolInput(tag="in_minimal_shannon_index", input_type=Float(optional=True), prefix="-e", doc=InputDocumentation(doc=": minimal Shannon index a read should have to be kept. [default=0]")), ToolInput(tag="in_maximum_number_selected", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc=": maximum number of selected reads [default=all]")), ToolInput(tag="in_given_string_written", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc=": the given string will be written in the header of the output file. [default=command line]")), ToolInput(tag="in_prints_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": prints the version number."))], outputs=[ToolOutput(tag="out_given_string_written", output_type=File(optional=True), selector=InputSelector(input_to_select="in_given_string_written", type_hint=File()), doc=OutputDocumentation(doc=": the given string will be written in the header of the output file. [default=command line]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

