from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Oncofuse_V0_1_0 = CommandToolBuilder(tool="oncofuse", base_command=["oncofuse"], inputs=[ToolInput(tag="in_genome_assembly_version", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="Genome assembly version, default is hg19. Allowed values: hg18, hg19, hg38")), ToolInput(tag="in_number_threads_uses", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Number of threads, uses all available processors by default")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_type", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncofuse_V0_1_0().translate("wdl", allow_empty_container=True)

