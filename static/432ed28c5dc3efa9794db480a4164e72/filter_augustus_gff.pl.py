from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Filter_Augustus_Gff_Pl_V0_1_0 = CommandToolBuilder(tool="filter_augustus_gff.pl", base_command=["filter_augustus_gff.pl"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="AUGUSTUS output file in GFF format")), ToolInput(tag="in_out", input_type=Int(optional=True), prefix="--out", doc=InputDocumentation(doc="If specified, write filtered gene predictions\nin GTF format to given file. If not specified,\nonly the number of supported genes is printed\nto STDOUT.")), ToolInput(tag="in_src", input_type=Boolean(optional=True), prefix="--src", doc=InputDocumentation(doc="=(E|P)                         Source tag of evidence to filter for, e.g. P\nfor protein or E for ESTs/RNA-Seq introns,\ncan in principle be any source, but only one\nat a time. Support threshold is one hint per\ntranscript."))], outputs=[ToolOutput(tag="out_in", output_type=File(optional=True), selector=InputSelector(input_to_select="in_in", type_hint=File()), doc=OutputDocumentation(doc="AUGUSTUS output file in GFF format"))], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Augustus_Gff_Pl_V0_1_0().translate("wdl")

