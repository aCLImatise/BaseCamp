from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Int

Splash_Reads_V0_1_0 = CommandToolBuilder(tool="splash_reads", base_command=["splash", "reads"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--outputDir", doc=InputDocumentation(doc="Output directory for mapped BAM files.")), ToolInput(tag="in_sample_name", input_type=String(optional=True), prefix="--sample-name", doc=InputDocumentation(doc="Name of sample")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file")), ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read-length", doc=InputDocumentation(doc="Read length")), ToolInput(tag="in_read_number", input_type=Int(optional=True), prefix="--read-number", doc=InputDocumentation(doc="Number of reads to simulate")), ToolInput(tag="in_read_coverage", input_type=Int(optional=True), prefix="--read-coverage", doc=InputDocumentation(doc="Read coverage (if read number is not specified)")), ToolInput(tag="in_sequencing_error", input_type=String(optional=True), prefix="--sequencing-error", doc=InputDocumentation(doc="Sequencing error")), ToolInput(tag="in_pulse", input_type=String(optional=True), prefix="--pulse", doc=InputDocumentation(doc="Pulse in minutes")), ToolInput(tag="in_chase", input_type=String(optional=True), prefix="--chase", doc=InputDocumentation(doc="Chase in minutes")), ToolInput(tag="in_tc_rate", input_type=String(optional=True), prefix="--tc-rate", doc=InputDocumentation(doc="T->C conversion rate\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for mapped BAM files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splash_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

