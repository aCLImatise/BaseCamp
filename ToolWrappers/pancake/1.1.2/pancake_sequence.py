from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Pancake_Sequence_V0_1_0 = CommandToolBuilder(tool="pancake_sequence", base_command=["pancake", "sequence"], inputs=[ToolInput(tag="in_pan_file", input_type=File(optional=True), prefix="--panfile", doc=InputDocumentation(doc="Name of PanCake Data Object File (required)")), ToolInput(tag="in_chrom", input_type=String(optional=True), prefix="--chrom", doc=InputDocumentation(doc="Chromosome from which sequence originates")), ToolInput(tag="in_genome", input_type=String(optional=True), prefix="--genome", doc=InputDocumentation(doc="(multiple) .fasta output of GENOME (if set, start and\nstop will be ignored)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="file to which .fasta output will be written (DEFAULT =\nSTDOUT)")), ToolInput(tag="in_linewidth", input_type=Int(optional=True), prefix="--linewidth", doc=InputDocumentation(doc="line witdth in .fastafile (DEFAULT=100)")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="-start", doc=InputDocumentation(doc="(1-based) start position on CHROMOSME (DEFAULT = 1)")), ToolInput(tag="in_stop", input_type=Int(optional=True), prefix="-stop", doc=InputDocumentation(doc="(1-based) stop position on CHROMOSME (DEFAULT = length\nof CHROMOSME)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="file to which .fasta output will be written (DEFAULT =\nSTDOUT)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pancake_Sequence_V0_1_0().translate("wdl", allow_empty_container=True)

