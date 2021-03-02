from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Array, File

Sqstorecreate_V0_1_0 = CommandToolBuilder(tool="sqStoreCreate", base_command=["sqStoreCreate"], inputs=[ToolInput(tag="in_load_raw_reads", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="load raw reads into new seqStore")), ToolInput(tag="in_minlength", input_type=String(optional=True), prefix="-minlength", doc=InputDocumentation(doc="discard reads shorter than L")), ToolInput(tag="in_genome_size", input_type=Int(optional=True), prefix="-genomesize", doc=InputDocumentation(doc="expected genome size, for keeping only the longest reads")), ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="-coverage", doc=InputDocumentation(doc="desired coverage in long reads")), ToolInput(tag="in_pac_bio_raw", input_type=Array(t=File(), optional=True), prefix="-pacbio-raw", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sqstorecreate_V0_1_0().translate("wdl", allow_empty_container=True)

