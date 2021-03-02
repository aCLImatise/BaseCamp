from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, String, Boolean

Msstitch_Conffilt_V0_1_0 = CommandToolBuilder(tool="msstitch_conffilt", base_command=["msstitch", "conffilt"], inputs=[ToolInput(tag="in_input_file_format", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file of {} format")), ToolInput(tag="in_directory_to_output", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Directory to output in")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_confidence_col", input_type=Int(optional=True), prefix="--confidence-col", doc=InputDocumentation(doc="Confidence column number or name in the tsv file.\nFirst column has number 1.")), ToolInput(tag="in_conf_col_pattern", input_type=String(optional=True), prefix="--confcolpattern", doc=InputDocumentation(doc="Text pattern to identify column in table on which\nconfidence filtering should be done. Use in case of\nnot using standard {} column")), ToolInput(tag="in_confidence_lvl", input_type=Int(optional=True), prefix="--confidence-lvl", doc=InputDocumentation(doc="Confidence cutoff level as a floating point number")), ToolInput(tag="in_confidence_better", input_type=String(optional=True), prefix="--confidence-better", doc=InputDocumentation(doc="Confidence type to define if higher or lower score is\nbetter. One of [higher, lower]")), ToolInput(tag="in_unroll", input_type=Boolean(optional=True), prefix="--unroll", doc=InputDocumentation(doc="PSM table from Mzid2TSV contains either one PSM per\nline with all the proteins of that shared peptide on\nthe same line (not unrolled, default), or one\nPSM/protein match per line where each protein from\nthat shared peptide gets its own line (unrolled).\n"))], outputs=[ToolOutput(tag="out_directory_to_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_to_output", type_hint=File()), doc=OutputDocumentation(doc="Directory to output in")), ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msstitch_Conffilt_V0_1_0().translate("wdl", allow_empty_container=True)

