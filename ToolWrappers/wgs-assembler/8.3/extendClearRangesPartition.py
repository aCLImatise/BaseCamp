from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Extendclearrangespartition_V0_1_0 = CommandToolBuilder(tool="extendClearRangesPartition", base_command=["extendClearRangesPartition"], inputs=[ToolInput(tag="in_the_gatekeeper_store", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="The gatekeeper store")), ToolInput(tag="in_the_checkpoint_use", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="The checkpoint to use")), ToolInput(tag="in_use_ckpname_checkpoint", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Use ckpName as the checkpoint name")), ToolInput(tag="in_number_partitions_make", input_type=Int(optional=True), prefix="-N", doc=InputDocumentation(doc="Number of partitions to make")), ToolInput(tag="in_maximum_fragments_partition", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="Maximum fragments per partition")), ToolInput(tag="in_partition_information_output", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Partition information output file")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_partition_information_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_partition_information_output", type_hint=File()), doc=OutputDocumentation(doc="Partition information output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extendclearrangespartition_V0_1_0().translate("wdl", allow_empty_container=True)

