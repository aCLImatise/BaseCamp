from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Agat_Sp_List_Short_Introns_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_list_short_introns.pl", base_command=["agat_sp_list_short_introns.pl"], inputs=[ToolInput(tag="in_ref_file", input_type=File(optional=True), prefix="-reffile", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="Minimum intron size accepted in nucleotide. All introns under\nthis size will be reported. Default value = 10.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output gff3 file where the gene incriminated will be write.")), ToolInput(tag="in_agat_sp_list_short_introns_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output gff3 file where the gene incriminated will be write."))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_List_Short_Introns_Pl_V0_1_0().translate("wdl")

