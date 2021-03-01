from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hlaprofiler_Pl_Count_Reads_V0_1_0 = CommandToolBuilder(tool="HLAProfiler.pl_count_reads", base_command=["HLAProfiler.pl", "count_reads"], inputs=[ToolInput(tag="in_reads_directory", input_type=Boolean(optional=True), prefix="-reads_directory", doc=InputDocumentation(doc="location of directory containing filtered read fastqs. Please make sure to filter files using HLAProfiler.pl filter before counting (required)")), ToolInput(tag="in_sample_name", input_type=Boolean(optional=True), prefix="-sample_name", doc=InputDocumentation(doc="|sn         name of the sample. This must perfect match the prefix of each of the read count files. i.e. The sample name for file NA12878.200.B_1.uniq.cnt would be NA12878.200 (required)")), ToolInput(tag="in_output_directory", input_type=Boolean(optional=True), prefix="-output_directory", doc=InputDocumentation(doc="|od    location of directory containing filtered read fastqs. Please make sure to filter files using HLAProfiler.pl filter before counting (default:-reads_directory)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="-threads", doc=InputDocumentation(doc="|c              number of threads to uses for processing.(default:1)")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hlaprofiler_Pl_Count_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

