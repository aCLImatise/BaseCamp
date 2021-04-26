from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Agat_Sp_Add_Introns_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_add_introns.pl", base_command=["agat_sp_add_introns.pl"], inputs=[ToolInput(tag="in_ref_file", input_type=File(optional=True), prefix="-reffile", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output gff3 file where the gene incriminated will be write.")), ToolInput(tag="in_features_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Usage:\nagat_sp_add_introns.pl --gff infile --out outFile\nagat_sp_add_introns.pl --help"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output gff3 file where the gene incriminated will be write."))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Add_Introns_Pl_V0_1_0().translate("wdl")

