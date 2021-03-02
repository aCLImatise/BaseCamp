from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cdscan_V0_1_0 = CommandToolBuilder(tool="cdscan", base_command=["cdscan"], inputs=[ToolInput(tag="in_scan_dna_protein", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Scan DNA (1) or Protein (2) [Integer]\ndefault = 1\nrange from 1 to 2")), ToolInput(tag="in_output_format_genbank", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Output format: GenBank (1) or FASTA (2) [Integer]  Optional\ndefault = 1\nrange from 1 to 2")), ToolInput(tag="in_call_custom_process", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Call custom process [T/F]  Optional\ndefault = F")), ToolInput(tag="in_show_progress_monitor", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Show progress monitor [T/F]  Optional\ndefault = F")), ToolInput(tag="in_output_file_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output File [File Out]\ndefault = stdout\n"))], outputs=[ToolOutput(tag="out_output_file_default", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_default", type_hint=File()), doc=OutputDocumentation(doc="Output File [File Out]\ndefault = stdout\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cdscan_V0_1_0().translate("wdl", allow_empty_container=True)

