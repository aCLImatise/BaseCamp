from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Augment_Bam_V0_1_0 = CommandToolBuilder(tool="augment_bam", base_command=["augment-bam"], inputs=[ToolInput(tag="in_augment_output_records", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="Augment output records with original fields from FILE (required)")), ToolInput(tag="in_invoke_command_its", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Invoke a command for its output rather than reading FILE")), ToolInput(tag="in_write_bam_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Write output BAM file to FILE rather than standard output")), ToolInput(tag="in_augment_records_pairs", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Augment records in pairs (input files must be grouped by name)"))], outputs=[ToolOutput(tag="out_augment_output_records", output_type=File(optional=True), selector=InputSelector(input_to_select="in_augment_output_records", type_hint=File()), doc=OutputDocumentation(doc="Augment output records with original fields from FILE (required)")), ToolOutput(tag="out_invoke_command_its", output_type=File(optional=True), selector=InputSelector(input_to_select="in_invoke_command_its", type_hint=File()), doc=OutputDocumentation(doc="Invoke a command for its output rather than reading FILE")), ToolOutput(tag="out_write_bam_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_write_bam_file", type_hint=File()), doc=OutputDocumentation(doc="Write output BAM file to FILE rather than standard output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augment_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

