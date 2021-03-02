from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Rsat_Implant_Sites_V0_1_0 = CommandToolBuilder(tool="rsat_implant_sites", base_command=["rsat", "implant-sites"], inputs=[ToolInput(tag="in_verbosity_set_verbosity", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="#, --verbosity=#   set verbosity to level #\n0 no verbosity\n1 max verbosity")), ToolInput(tag="in__input_read", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="#, --input=#       read sequence from # (must be in FASTA format)\nif not specified, the standard input is used")), ToolInput(tag="in__output_results", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="#, --output=#      output results to #\nif not specified, the standard output is used")), ToolInput(tag="in__sites_read", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="#, --sites=#       read sites from # (must be in FASTA format)")), ToolInput(tag="in__features_positions", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="#, --features=#    store site positions in #")), ToolInput(tag="in_noov", input_type=Boolean(optional=True), prefix="--noov", doc=InputDocumentation(doc="do not allow overlapping sites")), ToolInput(tag="in_implant_sites", input_type=String(), position=0, doc=InputDocumentation(doc="VERSION")), ToolInput(tag="in_author", input_type=Int(), position=1, doc=InputDocumentation(doc="AUTHOR")), ToolInput(tag="in_motifs", input_type=String(), position=0, doc=InputDocumentation(doc="sequences")), ToolInput(tag="in_random_motif", input_type=String(), position=0, doc=InputDocumentation(doc="random-sites"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Implant_Sites_V0_1_0().translate("wdl", allow_empty_container=True)

