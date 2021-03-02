from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Muscle_V0_1_0 = CommandToolBuilder(tool="muscle", base_command=["muscle"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input file in FASTA format (default stdin)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output alignment in FASTA format (default stdout)")), ToolInput(tag="in_diags", input_type=Boolean(optional=True), prefix="-diags", doc=InputDocumentation(doc="Find diagonals (faster for similar sequences)")), ToolInput(tag="in_maxiter_s", input_type=Int(optional=True), prefix="-maxiters", doc=InputDocumentation(doc="Maximum number of iterations (integer, default 16)")), ToolInput(tag="in_max_hours", input_type=String(optional=True), prefix="-maxhours", doc=InputDocumentation(doc="Maximum time to iterate in hours (default no limit)")), ToolInput(tag="in_html", input_type=Boolean(optional=True), prefix="-html", doc=InputDocumentation(doc="Write output in HTML format (default FASTA)")), ToolInput(tag="in_msf", input_type=Boolean(optional=True), prefix="-msf", doc=InputDocumentation(doc="Write output in GCG MSF format (default FASTA)")), ToolInput(tag="in_clw", input_type=Boolean(optional=True), prefix="-clw", doc=InputDocumentation(doc="Write output in CLUSTALW format (default FASTA)")), ToolInput(tag="in_cl_wstrict", input_type=Boolean(optional=True), prefix="-clwstrict", doc=InputDocumentation(doc="As -clw, with 'CLUSTAL W (1.81)' header")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="-log", doc=InputDocumentation(doc="[a] <logfile>  Log to file (append if -loga, overwrite if -log)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="Do not write progress messages to stderr")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="Display version information and exit"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output alignment in FASTA format (default stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Muscle_V0_1_0().translate("wdl", allow_empty_container=True)

