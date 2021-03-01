from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Index_And_Search_V0_1_0 = CommandToolBuilder(tool="index_and_search", base_command=["index_and_search"], inputs=[ToolInput(tag="in_file_containing_index", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=": A file containing the list of files to index - MANDATORY")), ToolInput(tag="in_search_mandatoryeach_line", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=": A file containing the list of files to search - MANDATORY\nEach line of the file corresponds to a set of files to search")), ToolInput(tag="in_absolute_path_log", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="</.../>: ABSOLUTE path to log folder")), ToolInput(tag="in_absolute_path_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="</.../>: ABSOLUTE path to output folder")), ToolInput(tag="in_size_kmers_value", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc=": Size of k-mers (value of k). [default=33]")), ToolInput(tag="in_number_shared_kmers", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc=": Number of shared k-mers. [default=2]")), ToolInput(tag="in_full_comparison_set", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": Full comparison of index set and the first searched set [default=false]")), ToolInput(tag="in_prints_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Prints the version number"))], outputs=[ToolOutput(tag="out_absolute_path_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_absolute_path_output", type_hint=File()), doc=OutputDocumentation(doc="</.../>: ABSOLUTE path to output folder"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Index_And_Search_V0_1_0().translate("wdl", allow_empty_container=True)

