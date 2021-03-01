from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory

Ta2Ace_V0_1_0 = CommandToolBuilder(tool="ta2ace", base_command=["ta2ace"], inputs=[ToolInput(tag="in_tigr_asm_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=".asm TIGR .asm file.  Must end in .asm")), ToolInput(tag="in_output_file_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file, by default <infile>.ace")), ToolInput(tag="in_location_of_chromatograms", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Location of the chromatograms")), ToolInput(tag="in_location_phd_directory", input_type=Directory(optional=True), prefix="-p", doc=InputDocumentation(doc="Location of the PHD directory")), ToolInput(tag="in_sequence_file_default", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="Sequence file, by default <infile>.seq")), ToolInput(tag="in_database_using_i", input_type=String(optional=True), prefix="-D", doc=InputDocumentation(doc="Database (if not using -i and -s)")), ToolInput(tag="in_database_info", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="Database info")), ToolInput(tag="in_list_put_ace", input_type=File(optional=True), prefix="-U", doc=InputDocumentation(doc="List of assemblies to put in .ace file"))], outputs=[ToolOutput(tag="out_output_file_default", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_default", type_hint=File()), doc=OutputDocumentation(doc="Output file, by default <infile>.ace"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ta2Ace_V0_1_0().translate("wdl", allow_empty_container=True)

