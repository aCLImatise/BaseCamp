from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bvop_V0_1_0 = CommandToolBuilder(tool="bvop", base_command=["bvop"], inputs=[ToolInput(tag="in__performs_filebv", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": performs NOT on file1.bv")), ToolInput(tag="in__performs_filebv_and_filebv", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc=": performs file1.bv AND file2.bv")), ToolInput(tag="in__performs_filebv_or_filebv", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": performs file1.bv OR file2.bv")), ToolInput(tag="in__performs_filebv_and_not_filebv", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc=": performs file1.bv AND (NOT file2.bv)")), ToolInput(tag="in_print_result_outputbv", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc=": print result in file output.bv [Default=stdout]")), ToolInput(tag="in_print_information_filebv", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": print information about file1.bv")), ToolInput(tag="in_prints_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Prints the version number and exit"))], outputs=[ToolOutput(tag="out_print_result_outputbv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_print_result_outputbv", type_hint=File()), doc=OutputDocumentation(doc=": print result in file output.bv [Default=stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bvop_V0_1_0().translate("wdl", allow_empty_container=True)

