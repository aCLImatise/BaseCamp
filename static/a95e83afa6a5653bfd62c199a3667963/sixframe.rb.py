from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Sixframe_Rb_V0_1_0 = CommandToolBuilder(tool="sixframe.rb", base_command=["sixframe.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_peptide_shaker", input_type=Boolean(optional=True), prefix="--peptideshaker", doc=InputDocumentation(doc="Format fasta output for peptideshaker compatibility [false]")), ToolInput(tag="in_coords", input_type=Boolean(optional=True), prefix="--coords", doc=InputDocumentation(doc="Write genomic coordinates in the fasta header [false]")), ToolInput(tag="in_strip_header", input_type=Boolean(optional=True), prefix="--strip-header", doc=InputDocumentation(doc="Dont write sequence definition [true]")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Minimum ORF length to keep [20]")), ToolInput(tag="in_gff_three", input_type=Boolean(optional=True), prefix="--gff3", doc=InputDocumentation(doc="Output gff3 instead of fasta [false]")), ToolInput(tag="in_genome_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sixframe_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

