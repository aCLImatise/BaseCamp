from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Boolean

Haphpipe_Ph_Parser_V0_1_0 = CommandToolBuilder(tool="haphpipe_ph_parser", base_command=["haphpipe", "ph_parser"], inputs=[ToolInput(tag="in_haplotypes_fa", input_type=File(optional=True), prefix="--haplotypes_fa", doc=InputDocumentation(doc="Haplotype file created by PredictHaplo.")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory. (default: .)")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix to add to sequence names")), ToolInput(tag="in_keep_gaps", input_type=Boolean(optional=True), prefix="--keep_gaps", doc=InputDocumentation(doc="Do not remove gaps from alignment (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not write output to console (silence stdout and\nstderr) (default: False)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Append console output to this file"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory. (default: .)")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Append console output to this file"))], container="quay.io/biocontainers/haphpipe:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haphpipe_Ph_Parser_V0_1_0().translate("wdl")

