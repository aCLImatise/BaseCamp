from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Peddy_V0_1_0 = CommandToolBuilder(tool="peddy", base_command=["peddy"], inputs=[ToolInput(tag="in_procs", input_type=Int(optional=True), prefix="--procs", doc=InputDocumentation(doc="number of processors to use")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="prefix for output files (default is basename\nof vcf)")), ToolInput(tag="in_each", input_type=Int(optional=True), prefix="--each", doc=InputDocumentation(doc="sample every nth value from the selected\nsites instead of every value to speed\nprocessing.")), ToolInput(tag="in_sites", input_type=File(optional=True), prefix="--sites", doc=InputDocumentation(doc="The path to a file with alternative sites to\nuse for calculating relatedness in format\n1:234234 1:45345345... with\nchrom:pos[:ref:alt] on each line. The\nspecial-case of 'hg38' for this will use\nhg38 sites shipped with peddy.")), ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="[DEBUG|INFO|WARNING|ERROR|CRITICAL]\nSet the level of log output.  [default:\nINFO]")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ped", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peddy_V0_1_0().translate("wdl", allow_empty_container=True)

