from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Agat_Sp_Merge_Annotations_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_merge_annotations.pl", base_command=["agat_sp_merge_annotations.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file(s). You can specify as much file you want\nlike so: -f file1 -f file2 -f file3")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output gff3 file where the gene incriminated will be write.")), ToolInput(tag="in_agat_sp_merge_annotations_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output gff3 file where the gene incriminated will be write."))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Merge_Annotations_Pl_V0_1_0().translate("wdl")

