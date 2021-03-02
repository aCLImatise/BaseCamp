from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Rsat_Random_Sites_V0_1_0 = CommandToolBuilder(tool="rsat_random_sites", base_command=["rsat", "random-sites"], inputs=[ToolInput(tag="in_verbosity_set_verbosity", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="#, --verbosity=#   set verbosity to level #\n0 no verbosity\n1 max verbosity")), ToolInput(tag="in__output_results", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="#, --output=#      output results to #\nif not specified, the standard output is used")), ToolInput(tag="in__motif_read", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="#, --motif=#       read motif(s) from #\nif not specified, the standard input is used")), ToolInput(tag="in_number_sites_generate", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="#                  number of sites to generate")), ToolInput(tag="in_random_sites", input_type=String(), position=0, doc=InputDocumentation(doc="VERSION")), ToolInput(tag="in_author", input_type=Int(), position=1, doc=InputDocumentation(doc="AUTHOR")), ToolInput(tag="in_pssm", input_type=String(), position=0, doc=InputDocumentation(doc="motifs")), ToolInput(tag="in_implant_sites", input_type=String(), position=0, doc=InputDocumentation(doc="random-motif"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Random_Sites_V0_1_0().translate("wdl", allow_empty_container=True)

