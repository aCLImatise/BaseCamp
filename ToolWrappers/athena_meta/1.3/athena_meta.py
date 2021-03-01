from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Athena_Meta_V0_1_0 = CommandToolBuilder(tool="athena_meta", base_command=["athena-meta"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="input JSON config file for run, NOTE:\ndirname(config.json) specifies root output directory")), ToolInput(tag="in_check_prereqs", input_type=Boolean(optional=True), prefix="--check_prereqs", doc=InputDocumentation(doc="test if external deps visible in environment")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="run tiny assembly test to check setup and prereqs")), ToolInput(tag="in_force_reads", input_type=Boolean(optional=True), prefix="--force_reads", doc=InputDocumentation(doc="proceed with subassembly even if input *bam and *fastq do\nnot pass QC")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of multiprocessing threads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Athena_Meta_V0_1_0().translate("wdl", allow_empty_container=True)

