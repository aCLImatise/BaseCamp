from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Mergevcf_V0_1_0 = CommandToolBuilder(tool="mergevcf", base_command=["mergevcf"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Specify output file (default:stdout)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Specify verbose output")), ToolInput(tag="in_labels", input_type=File(optional=True), prefix="--labels", doc=InputDocumentation(doc="Comma-separated labels for each input VCF file\n(default:basenames)")), ToolInput(tag="in_n_callers", input_type=Boolean(optional=True), prefix="--ncallers", doc=InputDocumentation(doc="Annotate variant with number of callers")), ToolInput(tag="in_min_callers", input_type=Int(optional=True), prefix="--mincallers", doc=InputDocumentation(doc="Minimum # of callers for variant to pass")), ToolInput(tag="in_sv", input_type=Boolean(optional=True), prefix="--sv", doc=InputDocumentation(doc="Force interpretation as SV (default:false)")), ToolInput(tag="in_filtered", input_type=Boolean(optional=True), prefix="--filtered", doc=InputDocumentation(doc="Include records that have failed one or more filters\n(default:false)")), ToolInput(tag="in_sv_window", input_type=Int(optional=True), prefix="--svwindow", doc=InputDocumentation(doc="Window for comparing breakpoint positions for SVs\n(default:100)\n")), ToolInput(tag="in_input_files", input_type=String(), position=0, doc=InputDocumentation(doc="Input VCF files"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Specify output file (default:stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergevcf_V0_1_0().translate("wdl", allow_empty_container=True)

