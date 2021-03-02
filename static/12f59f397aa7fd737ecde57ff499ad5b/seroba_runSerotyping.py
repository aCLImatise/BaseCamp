from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Seroba_Runserotyping_V0_1_0 = CommandToolBuilder(tool="seroba_runSerotyping", base_command=["seroba", "runSerotyping"], inputs=[ToolInput(tag="in_no_clean", input_type=Boolean(optional=True), prefix="--noclean", doc=InputDocumentation(doc="Do not clean up intermediate files (assemblies, ariba\nreport)")), ToolInput(tag="in_coverage", input_type=Int(optional=True), prefix="--coverage", doc=InputDocumentation(doc="threshold for k-mer coverage of the reference sequence\n, default = 20\n")), ToolInput(tag="in_databases", input_type=String(), position=0, doc=InputDocumentation(doc="path to database directory")), ToolInput(tag="in_read_one", input_type=Int(), position=1, doc=InputDocumentation(doc="forward read file")), ToolInput(tag="in_read_two", input_type=Int(), position=2, doc=InputDocumentation(doc="backward read file")), ToolInput(tag="in_prefix", input_type=String(), position=3, doc=InputDocumentation(doc="unique prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seroba_Runserotyping_V0_1_0().translate("wdl", allow_empty_container=True)

