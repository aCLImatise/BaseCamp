from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Pbreports_Circ_V0_1_0 = CommandToolBuilder(tool="falconc_pbreports_circ", base_command=["falconc", "pbreports-circ"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_fastafn_string_required", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\n.fai)")), ToolInput(tag="in__circfn_string", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="=, --circ-fn=   string  REQUIRED  Text list of circular contigs\n(newline-delimited)\n")), ToolInput(tag="in_pb_reports_circ", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Pbreports_Circ_V0_1_0().translate("wdl")

