from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Capclocation2Fragment_V0_1_0 = CommandToolBuilder(tool="capClocation2fragment", base_command=["capClocation2fragment"], inputs=[ToolInput(tag="in_restfragfile_filename_bed", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="restfragfile    filename for bed file containing the list of restriction fragments")), ToolInput(tag="in_outfile_filename_present", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="outfile         filename for output bed file (if not present output with be sent to stdout)")), ToolInput(tag="in_inputfile_filename_bed", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="inputfile       filename for bed file containing genomic locations")), ToolInput(tag="in_location_single_genomic", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="location        is a single genomic location in format chr1:1234-5678"))], outputs=[ToolOutput(tag="out_outfile_filename_present", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile_filename_present", type_hint=File()), doc=OutputDocumentation(doc="outfile         filename for output bed file (if not present output with be sent to stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Capclocation2Fragment_V0_1_0().translate("wdl", allow_empty_container=True)

