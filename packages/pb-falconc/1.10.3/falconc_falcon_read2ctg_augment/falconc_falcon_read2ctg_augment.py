from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Falconc_Falcon_Read2Ctg_Augment_V0_1_0 = CommandToolBuilder(tool="falconc_falcon_read2ctg_augment", base_command=["falconc", "falcon-read2ctg-augment"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_phasefn_string_required", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="=, --phase-fn=  string  REQUIRED  read2ctg.txt file")), ToolInput(tag="in__string_required", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="=, --bam-fn=    string  REQUIRED  bam/sam file of unphased reads mapped")), ToolInput(tag="in__outfn_string", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-fn=    string  REQUIRED  mostly same as read2ctg.txt, but augmented")), ToolInput(tag="in_falcon_read_two_ctg_augment", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Falcon_Read2Ctg_Augment_V0_1_0().translate("wdl")

