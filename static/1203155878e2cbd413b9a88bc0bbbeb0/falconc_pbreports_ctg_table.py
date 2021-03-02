from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Falconc_Pbreports_Ctg_Table_V0_1_0 = CommandToolBuilder(tool="falconc_pbreports_ctg_table", base_command=["falconc", "pbreports-ctg-table"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_fastafn_string_required", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\n.fai)")), ToolInput(tag="in__circfn_string", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="=, --circ-fn=   string  REQUIRED  Text list of circular contigs\n(newline-delimited)")), ToolInput(tag="in__gfffn_string", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="=, --gff-fn=    string  REQUIRED  PacBio coverage GFF file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Pbreports_Ctg_Table_V0_1_0().translate("wdl", allow_empty_container=True)

