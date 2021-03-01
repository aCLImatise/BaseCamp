from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Flaimapper_V0_1_0 = CommandToolBuilder(tool="flaimapper", base_command=["flaimapper"], inputs=[ToolInput(tag="in_parameters", input_type=File(optional=True), prefix="--parameters", doc=InputDocumentation(doc="File containing the filtering parameters, using\ndefault if none is provided")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output filename; '-' for stdout")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="file format of the output: [1: table; per fragment],\n[2: GTF (default)]")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Single reference FASTA file (+faid index) containing\nall genomic reference sequences")), ToolInput(tag="in_offset_five_p", input_type=Int(optional=True), prefix="--offset5p", doc=InputDocumentation(doc="Offset in bp added to the exon-type annotations in the\nGTF file. This offset is used in tools estimating the\nexpression levels (default=4)")), ToolInput(tag="in_offset_three_p", input_type=Int(optional=True), prefix="--offset3p", doc=InputDocumentation(doc="Offset in bp added to the exon-type annotations in the\nGTF file. This offset is used in tools estimating the\nexpression levels (default=4)")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output filename; '-' for stdout")), ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="file format of the output: [1: table; per fragment],\n[2: GTF (default)]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flaimapper_V0_1_0().translate("wdl", allow_empty_container=True)

