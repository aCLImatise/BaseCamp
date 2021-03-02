from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pylprotpredictor_V0_1_0 = CommandToolBuilder(tool="pylprotpredictor", base_command=["pylprotpredictor"], inputs=[ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="path to a FASTA file with full or contig sequences of\na genome to analyze")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="path to the output directory")), ToolInput(tag="in_reference_fast_a_db", input_type=File(optional=True), prefix="--reference_fasta_db", doc=InputDocumentation(doc="path to FASTA file with reference database")), ToolInput(tag="in_reference_dm_nd_db", input_type=File(optional=True), prefix="--reference_dmnd_db", doc=InputDocumentation(doc="path to Diamond formatted file with reference database\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="path to the output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pylprotpredictor_V0_1_0().translate("wdl", allow_empty_container=True)

