from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Hlaprofiler_Pl_Filter_V0_1_0 = CommandToolBuilder(tool="HLAProfiler.pl_filter", base_command=["HLAProfiler.pl", "filter"], inputs=[ToolInput(tag="in_fast_q_one", input_type=Boolean(optional=True), prefix="-fastq1", doc=InputDocumentation(doc="|fq1             read1 fastq.(required)")), ToolInput(tag="in_fast_q_two", input_type=Boolean(optional=True), prefix="-fastq2", doc=InputDocumentation(doc="|fq2             read2 fastq.(required)")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="-output_dir", doc=InputDocumentation(doc="|od          location of output directory. (default:'.')")), ToolInput(tag="in_database_dir", input_type=Boolean(optional=True), prefix="-database_dir", doc=InputDocumentation(doc="|dd        location of database directory(default:'.')")), ToolInput(tag="in_database_name", input_type=Boolean(optional=True), prefix="-database_name", doc=InputDocumentation(doc="|db       name of the HLA database to be created(default:hla)")), ToolInput(tag="in_kraken_path", input_type=Boolean(optional=True), prefix="-kraken_path", doc=InputDocumentation(doc="|kp         base directory of kraken installation. (default:base directory of path returned by `which kraken`)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="-threads", doc=InputDocumentation(doc="|c              number of threads to uses for processing.(default:1)")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="|od          location of output directory. (default:'.')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hlaprofiler_Pl_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

