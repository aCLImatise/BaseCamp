from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Rnaseq_Peakfinder_Pl_V0_1_0 = CommandToolBuilder(tool="rnaseq_peakfinder.pl", base_command=["rnaseq_peakfinder.pl"], inputs=[ToolInput(tag="in_bgp_os", input_type=Boolean(optional=True), prefix="--bgpos", doc=InputDocumentation(doc="BedGraph input file containing coverage of the [+] strand.")), ToolInput(tag="in_bgn_eg", input_type=Boolean(optional=True), prefix="--bgneg", doc=InputDocumentation(doc="BedGraph input file containing coverage of the [-] strand.")), ToolInput(tag="in_winsize", input_type=Boolean(optional=True), prefix="--winsize", doc=InputDocumentation(doc="Size of the sliding window in nt.")), ToolInput(tag="in_interval", input_type=Boolean(optional=True), prefix="--interval", doc=InputDocumentation(doc="Size of the interval the sliding window is shifted at each step\n('step size').")), ToolInput(tag="in_min_cov", input_type=Boolean(optional=True), prefix="--mincov", doc=InputDocumentation(doc="Minimum coverage required for an enriched region to be considered.")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="--length", doc=InputDocumentation(doc="Maximum length of a peak in nt.")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Percentage of the maximum coverage value allowed at both ends of the\npeaks (default 0.1). This value is used to identify peak boundaries.")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output directory.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnaseq_Peakfinder_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

