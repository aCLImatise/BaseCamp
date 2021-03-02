from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Xam_Coverage_Bins_Pl_V0_1_0 = CommandToolBuilder(tool="xam_coverage_bins.pl", base_command=["xam_coverage_bins.pl"], inputs=[ToolInput(tag="in_x_am_file", input_type=Boolean(optional=True), prefix="-xam_file", doc=InputDocumentation(doc="bam|cram file to check coverage.")), ToolInput(tag="in_target_file", input_type=Boolean(optional=True), prefix="-target_file", doc=InputDocumentation(doc="bed|gff3 file of targets.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-output_file", doc=InputDocumentation(doc="file to write JSON string output of coverage")), ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="-type", doc=InputDocumentation(doc="Type of target file provided [bed|gff3]")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="Print version and exit.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="-man", doc=InputDocumentation(doc="Full documentation.")), ToolInput(tag="in_x_am_files", input_type=Boolean(optional=True), prefix="-xam_files", doc=InputDocumentation(doc="bam|cram file to check coverage."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="file to write JSON string output of coverage"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xam_Coverage_Bins_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

