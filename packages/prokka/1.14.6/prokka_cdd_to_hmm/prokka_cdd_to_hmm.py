from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Prokka_Cdd_To_Hmm_V0_1_0 = CommandToolBuilder(tool="prokka_cdd_to_hmm", base_command=["prokka-cdd_to_hmm"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="!      Verbose output (default '0').")), ToolInput(tag="in_srcdir", input_type=String(optional=True), prefix="--srcdir", doc=InputDocumentation(doc="CDD download dir (default '/bio/data/cdd/latest/').")), ToolInput(tag="in_lib", input_type=String(optional=True), prefix="--lib", doc=InputDocumentation(doc="Subset of CDD to create (default 'COG').")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="!        Force overwrite of output files: LIB.aln LIB.hmm (default '0')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prokka_Cdd_To_Hmm_V0_1_0().translate("wdl", allow_empty_container=True)

