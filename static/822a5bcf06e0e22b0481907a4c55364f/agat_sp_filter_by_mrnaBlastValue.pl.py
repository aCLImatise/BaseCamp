from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Agat_Sp_Filter_By_Mrnablastvalue_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_filter_by_mrnaBlastValue.pl", base_command=["agat_sp_filter_by_mrnaBlastValue.pl"], inputs=[ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_blast", input_type=File(optional=True), prefix="--blast", doc=InputDocumentation(doc="list of the all-vs-all blast file (outfmt 6, blastp)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="The name of the output file. By default the output is the\nstandard output.")), ToolInput(tag="in_agat_sp_filter_by_mrna_blast_value_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="The name of the output file. By default the output is the\nstandard output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Filter_By_Mrnablastvalue_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

