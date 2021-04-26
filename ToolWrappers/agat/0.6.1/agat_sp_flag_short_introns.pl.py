from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Agat_Sp_Flag_Short_Introns_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_flag_short_introns.pl", base_command=["agat_sp_flag_short_introns.pl"], inputs=[ToolInput(tag="in_ref_file", input_type=File(optional=True), prefix="-reffile", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_intron_size", input_type=Int(optional=True), prefix="--intron_size", doc=InputDocumentation(doc="Minimum intron size, default 10. All genes with an intron < of\nthis size will be flagged with the pseudo attribute (the value\nwill be the size of the smallest intron found within the\nincriminated gene)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output gff3 file where the result will be printed.")), ToolInput(tag="in_bolean_verbose_debugging", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Bolean. Verbose for debugging purpose.")), ToolInput(tag="in_agat_sp_flag_short_introns_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output gff3 file where the result will be printed."))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Flag_Short_Introns_Pl_V0_1_0().translate("wdl")

