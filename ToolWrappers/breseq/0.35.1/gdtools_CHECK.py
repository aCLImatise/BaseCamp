from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Gdtools_Check_V0_1_0 = CommandToolBuilder(tool="gdtools_CHECK", base_command=["gdtools", "CHECK"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output GD file (DEFAULT=comp.gd)")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="file containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)")), ToolInput(tag="in_evidence", input_type=Boolean(optional=True), prefix="--evidence", doc=InputDocumentation(doc="compare evidence")), ToolInput(tag="in_jc_buffer", input_type=Int(optional=True), prefix="--jc-buffer", doc=InputDocumentation(doc="when comparing JC evidence, length of sequence segment to compare for JC evidence (DEFAULT=50)")), ToolInput(tag="in_jc_shorten", input_type=Int(optional=True), prefix="--jc-shorten", doc=InputDocumentation(doc="when comparing JC evidence, length to shorten control segments by when comparing JC evidence for overlap (DEFAULT=5)")), ToolInput(tag="in_jc_only_accepted", input_type=Boolean(optional=True), prefix="--jc-only-accepted", doc=InputDocumentation(doc="when comparing JC evidence, do not score/count rejected items")), ToolInput(tag="in_plot_jc", input_type=File(optional=True), prefix="--plot-jc", doc=InputDocumentation(doc="plot JC Precision versus Score, argument is a prefix for the file paths")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output GD file (DEFAULT=comp.gd)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Check_V0_1_0().translate("wdl", allow_empty_container=True)

