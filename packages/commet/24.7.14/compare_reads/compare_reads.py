from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Compare_Reads_V0_1_0 = CommandToolBuilder(tool="compare_reads", base_command=["compare_reads"], inputs=[ToolInput(tag="in_file_containing_files", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=": A file containing the list of files to index (comma separated) - MANDATORY\nEach line of the file corresponds to a set of files (comma separated)")), ToolInput(tag="in_file_containing_file", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=": A file containing the list of file sets to search - MANDATORY\nEach line of the file corresponds to a set of files (comma separated)")), ToolInput(tag="in_absolute_path_log", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="</.../>: ABSOLUTE path to log folder")), ToolInput(tag="in_absolute_path_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="</.../>: ABSOLUTE path to output folder")), ToolInput(tag="in_size_kmers_value", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc=": Size of k-mers (value of k). [default=32]")), ToolInput(tag="in_number_shared_kmers", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc=": Number of shared k-mers. [default=2]")), ToolInput(tag="in_prints_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Prints the version number and exit"))], outputs=[ToolOutput(tag="out_absolute_path_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_absolute_path_output", type_hint=File()), doc=OutputDocumentation(doc="</.../>: ABSOLUTE path to output folder"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

