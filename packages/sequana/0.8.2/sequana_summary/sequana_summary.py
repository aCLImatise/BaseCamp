from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Sequana_Summary_V0_1_0 = CommandToolBuilder(tool="sequana_summary", base_command=["sequana_summary"], inputs=[ToolInput(tag="in_multiple", input_type=File(optional=True), prefix="--multiple", doc=InputDocumentation(doc="one filename (either FastQ or BED file; see\nDESCRIPTION)")), ToolInput(tag="in_glob", input_type=File(optional=True), prefix="--glob", doc=InputDocumentation(doc="a glob/pattern of files. Must use quotes e.g.\n'*.fastq.gz' (See --file or DESCRIPTION for details)")), ToolInput(tag="in_sample", input_type=File(optional=True), prefix="--sample", doc=InputDocumentation(doc="If input FastQ files, analyse entire file. You may\nrestrict analysis to set of reads")), ToolInput(tag="in_thread", input_type=Int(optional=True), prefix="--thread", doc=InputDocumentation(doc="Several files may be processed in parallel. By default\n4 threads are used\n")), ToolInput(tag="in_welcome", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_se_quan_a", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Summary_V0_1_0().translate("wdl", allow_empty_container=True)

