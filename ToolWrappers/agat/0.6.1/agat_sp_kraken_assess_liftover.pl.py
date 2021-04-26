from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Agat_Sp_Kraken_Assess_Liftover_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_kraken_assess_liftover.pl", base_command=["agat_sp_kraken_assess_liftover.pl"], inputs=[ToolInput(tag="in_gtf", input_type=Boolean(optional=True), prefix="-gtf", doc=InputDocumentation(doc="Input gtf file produced by Kraken.")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Gene mapping percentage over which a gene must be reported. By\ndefault the value is 0.")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose information.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_sp_kraken_assess_lift_coverage_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Kraken_Assess_Liftover_Pl_V0_1_0().translate("wdl")

